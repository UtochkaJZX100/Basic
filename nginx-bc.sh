#!/bin/bash

cp -f /home/otus/default /etc/nginx/sites-enabled/default
cp -f /home/otus/filebeat.yml /etc/filebeat/filebeat.yml

#Замена сохранённых конфигов сервисов

systemctl restart nginx
systemctl restart filebeat

#Запуск сервисов
