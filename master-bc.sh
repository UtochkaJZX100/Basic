#!/bin/bash

cp -f /home/otus/mysqldm.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#Замена сохранённого конфига сервиса

service mysql restart

#Перезапуск сервиса

mysql -u root < /home/otus/master-bc.sql

#Вызов выполнения в БД скрипта с командами
