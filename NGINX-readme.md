FRONT
1) Установить пакет: apt install -y nginx.
2) Установить пакет: apt install -y filebeat.
3) Установить пакеты: apt install -y prometheus-node-exporter prometheus-nginx-exporter.
4) Установить пакеты: apt install -y elasticsearch kibana logstash.
4) Подключиться к репозиторию и скачать файлы для восстановления: git pull origin NGINX.
5) Запустить скрипт nginx-bc.sh: происходит замена всех необходимых конфигов.
BACK
1) Установить пакет: apt install apache2.
2) Подключиться к репозиторию и скачать файлы для восстановления: git pull origin NGINX.
3) На соответствующих машинах запустить скрипты apc"1/2/3"-bc.sh: происходит замена индексных страниц. 
