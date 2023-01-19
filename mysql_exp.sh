#!/bin/bash

if [[ -z $IP ]];
then 
     echo "NO IP passed"
fi

docker run -d --name=mysql_exporter \
-p 9104:9104 \
-e DATA_SOURCE_NAME="root:ThePassword@($IP:3306)/bdgrupo4" \
prom/mysqld-exporter:v0.14.0
