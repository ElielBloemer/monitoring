#!/bin/bash

docker run -d --name=node_exporter \
-p 9100:9100 \
prom/node-exporter:v1.0.1
