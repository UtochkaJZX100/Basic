#!/bin/bash

STOP REPLICA

MYSQL="mysql --skip-column-names"

# Получаем список баз данных
for db in $($MYSQL -e "SHOW DATABASES"); do
  # Пропускаем системные базы данных
  if [[ "$db" == "information_schema" || "$db" == "performance_schema" || "$db" == "mysql" || "$db" == "sys" ]]; then
    continue
  fi

  # Создаем папку для базы данных
  mkdir -p "$db"

  # Получаем список таблиц в базе данных
  for table in $($MYSQL -e "SHOW TABLES FROM $db"); do
    # Делаем дамп таблицы и архивируем
    mysqldump "$db" "$table" | gzip -1 > "$db/$table.sql.gz"
  done
done

START REPLICA
