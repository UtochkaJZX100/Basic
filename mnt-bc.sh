#!/bin/bash

cp -f /home/otus/prometheus.yml /etc/prometheus/prometheus.yml

#Замена сохранённых конфигов сервисов

systemctl restart prometheus
/usr/bin/systemctl enable --now grafana-server

#Запуск сервисов

