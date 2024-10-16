#create db hv, user hv - kein PW
USE mysql;

#delete db hv, when it exists and create new one
DROP DATABASE IF EXISTS hv;
CREATE DATABASE hv CHARACTER SET utf8;

#delete user hv, when it existss and create new one
DROP USER IF EXISTS 'hv'@'localhost';
CREATE USER 'hv'@'localhost' IDENTIFIED BY '';

#user get all rights
GRANT ALL PRIVILEGES ON hv.* TO 'hv'@'localhost';
FLUSH PRIVILEGES;

# command to execute: mysql -u root -p hv < C:\Kappelmeier\3FA071_Gruppe4\dateien\sql\create_db_hv.sql