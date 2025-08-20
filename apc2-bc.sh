#!/bin/bash

cp -f /home/otus/index2.html /var/www/html/index.html

#Замена сохранённых html-страниц

systemctl restart apache2

##Запуск сервисов
