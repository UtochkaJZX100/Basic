STOP SLAVE;

#Остановка репликации

CHANGE REPLICATION SOURCE TO SOURCE_HOST='192.168.10.225', SOURCE_USER='otus', SOURCE_PASSWORD='qwerty', SOURCE_AUTO_POSITION=1, GET_SOURCE_PUBLIC_KEY=1;

#Настройка параметров для репликации

START REPLICA;

#Запуск репликации
