1) Установить пакеты: apt install -y elasticsearch kibana logstash.
2) Подключиться к репозиторию и скачать файлы для восстановления: git pull origin MNT.
3) Запустить скрипт mnt-bc.sh: происходит замена всех необходимых конфигов и рестарты сервисов.
4) Перейти в 192.168.10.141:3000 (admin - admin).
5) Добавляем источник данных для Grafana: Connections -> Data Sources -> Add data source -> Выбираем Prometheus (поле Connection: http://localhost:9090) -> Save and Test.
6) Настраиваем дефолтный дашборд: Dashboards -> New -> Import (1860 - Node, 14900 - Nginx) -> Выбираем Prometheus в качестве источника данных -> Import.
