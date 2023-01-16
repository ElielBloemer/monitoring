#!/bin/bash

docker run -d --name=grafana \
-v /home/ebloemer/monitoring/data/grafana:/var/lib/grafana/ \
--user 0 \
-p 3000:3000 grafana/grafana:7.5.1 

