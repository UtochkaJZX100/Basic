#!/bin/bash

cp -f /home/otus/mysqlds.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#Замена сохранённого конфига сервиса

service mysql restart

#Перезапуск сервиса

mysql -u root < /home/otus/slave-bc.sql

#Вызов скрипта с командами для исполнения в БД
