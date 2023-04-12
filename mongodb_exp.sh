#!/bin/bash
#uri: "mongodb://usuario:contraseña@localhost:27017/db1,db2,db3"

docker run -d --name=mongo_exporter -p 9216:9216 -p 17001:17001 \
-e "MONGODB_URI=mongodb://admin:VRuAd2Nvmp4ELHh5@172.17.0.2:27017" \
percona/mongodb_exporter:0.20
