#!/bin/bash

if [[ -z $1 ]];
then 
     echo "NO parameter passed"
fi

CONTAINERINFO=$(docker container ls | grep $1)

if [[ $? -eq 0 ]];
then 
ID=$(echo $CONTAINERINFO | cut -d' ' -f1)
echo "CONTAINER ID:$ID"
IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $FW)
echo -e "NAME CONTAINER=$1 \nIP=$IP"
else
   echo "NAME CONTAINER=$1 NOT FOUND"
fi
