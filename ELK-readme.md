1) Установить пакеты: apt install -y elasticsearch kibana logstash.
2) Подключиться к репозиторию и скачать файлы для восстановления: git pull origin ELK.
3) Запустить скрипт elk-bc.sh: происходит замена всех необходимых конфигов, инициируется замена дефолтного пароля для elastic, выводится токен для kibana.
4) Ввести токен в поле запроса kibana (192.168.10.249:5601), вызвать запрашиваемый код верификации: /usr/share/kibana/bin/kibana-verification-code.
5) Вставить код верификации в поле запроса kibana.
6) Логинимся: elastic - qwerty.
7) Managment -> Stack Managment -> Data -> Index Managment (ДОЛЖЕН ОТОБРАЗИТСЯ ИНДЕКС)
8) Dashboards -> Create a data view: Name "Nginx", Index pattern "weblogs" -> Save data to Kibana -> Discover -> All logs -> Nginx (ЛОГИ ДОЛЖНЫ ПОЯВИТЬСЯ) -> Dashboards -> Create a dashboard -> Create a visualisation (Собираем дашборд)
9) Дефолтный вариант дашборда: горизонталь - url.original.keyword, вертикаль - Сount.
