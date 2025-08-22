#!/bin/bash

cp -f /home/otus/mysqlds.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#Замена сохранённого конфига

mysql -u root -p  -e STOP SLAVE;

#Остановка репликации

mysql -u root -p  -e CHANGE REPLICATION SOURCE TO SOURCE_HOST='192.168.10.225', SOURCE_USER='otus', SOURCE_PASSWORD='qwerty', SOURCE_AUTO_POSITION=1, GET_SOURCE_PUBLIC_KEY=1;

#Настройка параметров для репликации

mysql -u root -p  -e START REPLICA;

#Запуск репликации
