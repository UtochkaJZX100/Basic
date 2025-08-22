#!/bin/bash

cp -f /home/otus/mysqldm.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#Замена сохранённого конфига сервиса

service mysql restart

#Перезапуск сервиса

mysql -u root -e CREATE USER otus@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'qwerty';

#Создание пользователя для репликации

mysql -u root -e GRANT REPLICATION SLAVE ON *.* TO otus@'%';

#Добавляем пользователю для репликации права для подключения с любого хоста
