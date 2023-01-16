#!/bin/bash

docker run -d --name=prometheus \
-v /home/ebloemer/monitoring/prometheus_config:/etc/prometheus/ \
-p 9090:9090 \
prom/prometheus:v2.24.1