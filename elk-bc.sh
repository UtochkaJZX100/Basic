#!/bin/bash

cp -f /home/otus/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
cp -f /home/otus/jvm.options /etc/elasticsearch/jvm.options
cp -f /home/otus/kibana.yml /etc/kibana/kibana.yml
cp -f /home/otus/logstash.yml /etc/logstash/logstash.yml
cp -f /home/otus/logstash-nginx-es.conf /etc/logstash/conf.d/logstash-nginx-es.conf

#Замена сохранённых конфигов сервисов

/usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic -i

#Установка пароля для Elasticsearch

/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana

#Вывод токена для Kibana

/usr/share/kibana/bin/kibana-verification-code

#Вывод кода верификации для Kibana

mkdir /etc/logstash/certs/ && cp /etc/elasticsearch/certs/http_ca.crt /etc/logstash/certs
chown -R logstash:logstash /etc/logstash/certs/

#Добавление сертификата безопасности для Logstash с присвоением прав для чтения

systemctl daemon-reload
systemctl enable --now elasticsearch.service
systemctl restart kibana
systemctl enable --now logstash.service

#Рестарт всех сервисов стека

echo "ELK started"
