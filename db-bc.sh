#!/bin/bash

mysql -e "STOP REPLICA"

MYSQL="mysql --skip-column-names"
#Пропуск названий столбцов
for db in $($MYSQL -e "SHOW DATABASES"); do
# Получение списка баз данных
  if [[ "$db" == "information_schema" || "$db" == "performance_schema" || "$db" == "mysql" || "$db" == "sys" ]]; then
    continue
  fi
# Пропуск системных баз данных
  mkdir -p "$db"
# Создание директории для базы данных
  for table in $($MYSQL -e "SHOW TABLES FROM $db"); do
# Получаем список таблиц в базе данных
    mysqldump "$db" "$table" | gzip -1 > "$db/$table.sql.gz"
# Снятие дампа и последующая его архивация
  done
done

mysql -e "START REPLICA"
