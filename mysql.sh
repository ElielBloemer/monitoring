#!/bin/bash
docker run -d --name=mysql \
 -e MYSQL_DATABASE=bdgrupo4 \
 -e MYSQL_ROOT_PASSWORD=ThePassword \
 -e MYSQL_ALLOW_EMPTY_PASSWORD=true \
 -p 3306:3306 \
  mysql:8.0