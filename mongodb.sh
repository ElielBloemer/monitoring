#!/bin/bash

docker run -d --name=mongodb -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=VRuAd2Nvmp4ELHh5 -e MONGO_INITDB_DATABASE=test -v /tmp/mongo-data:/data/db mongo:latest
