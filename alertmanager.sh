#!/bin/bash

docker run -d --name=alert_manager \
-v /home/ebloemer/monitoring/prometheus_config/alertmanager:/etc/alertmanager/ \
-p 9093:9093 \
prom/alertmanager:v0.21.0