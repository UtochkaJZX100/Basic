#!/bin/bash

STOP REPLICA

MYSQL='mysql --skip-column-names'
#Пропуск названий столбцов

for i in mysql '$MYSQL -e "SHOW DATABASES"';
do
  for j in mysql '$MYSQL "SHOW TABLES FROM $i";
  do 
    mysqldump $j > /usr/bin/tb.sql
  done
  mkdir $j;
  $j | gzip -1 > $j/$j.gz;
done

START REPLICA
