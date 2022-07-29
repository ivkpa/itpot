gitlab_user=root
gitlab_pass=toor1234
gitlab_host=gitlab
gitlab_runner_token=swkdfjgh324gtbjdhfbjdhfb234skdjfksjdfb

until curl -s http://${gitlab_host}; do
  echo "Waiting for gitlab to start..."
  sleep 5s & wait ${!}
done

# gitlab is still loadin even after curl got answer
sleep 60

git ls-remote http://${gitlab_user}:${gitlab_pass}@${gitlab_host}/root/wordpress.git
if [ "$?" -ne "0" ]
then
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
  git clone https://github.com/WordPress/WordPress.git wordpress
  cd wordpress
  git remote add local-gitlab http://${gitlab_user}:${gitlab_pass}@${gitlab_host}/root/wordpress.git
  cp /gitlab-custom-config/.gitlab-ci.yml .gitlab-ci.yml
  git add .gitlab-ci.yml
  git commit -m "ci added"
  git push local-gitlab HEAD

  gitlab-runner register \
  --non-interactive \
  --url "http://${gitlab_host}/" \
  --registration-token "${gitlab_runner_token}" \
  --executor "shell" \
  --description "shell runner" \
  --maintenance-note "Free-form maintainer notes about this runner" \
  --tag-list "shell" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"

fi

/usr/bin/dumb-init /entrypoint run --user=root --working-directory=/home/gitlab-runner
