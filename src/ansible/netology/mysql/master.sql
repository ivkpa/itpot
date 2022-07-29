CREATE USER repl@'%' IDENTIFIED WITH mysql_native_password BY 'QqFFFF1';
GRANT REPLICATION SLAVE ON *.* TO repl@'%';
CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';
GRANT ALL PRIVILEGES ON wordpress . * TO 'wordpress'@'%';