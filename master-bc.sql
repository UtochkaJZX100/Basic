mysql -u root -e CREATE USER otus@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'qwerty';

#Создание пользователя для репликации

mysql -u root -e GRANT REPLICATION SLAVE ON *.* TO otus@'%';

#Добавляем пользователю для репликации права для подключения с любого хоста
