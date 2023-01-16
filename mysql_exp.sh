#!/bin/bash

docker run -d --name=mysql_exporter \
-p 9104:9104 \
-e DATA_SOURCE_NAME="root:ThePassword@(172.17.0.7:3306)/bdgrupo4" \
prom/mysqld-exporter:v0.14.0