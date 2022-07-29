## ������ ��� ������������ � �������������� Yandex Cloud � ������� terraform �������� docker swarm � ���������  wordpress, mysql (master+replica), gitlab, gitlab-runner, nginx, prometheus, grafana, alertmanager

��� ������������ ��������� ��������� �������� (*�������������� ��������� ������������ ���������� ������� ns �������� Yandex Cloud DNS, �� ��������� ������������ ����� itpot.ru):  
1. � ����� src/packer/centos-7-base.json ������� folder_id � token  
2. ��������� `cd src/packer/ && packer validate centos-7-base.json && packer build centos-7-base.json`  
3. � ����� src/terraform/variables.tf ��������� ��� ���������  
4. � ����� src/terraform/provider.tf ������� access_key � secret_key ��� backend "s3"  
5. terraform init  
6. terraform plan  
7. terraform apply --auto-approve  

![wordpress](./1.png)
![gitlab](./2.png)
![grafana](./3.png)
![prometheus](./4.png)
![alertmanager](./5.png)