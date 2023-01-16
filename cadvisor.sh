#!/bin/bash

docker run -d --name=cadvisor \
-p 8080:8080 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone:/etc/timezone:ro \
-v /:/rootfs:ro \
-v /var/run:/var/run:rw \
-v /sys:/sys:ro \
-v /var/lib/docker:/var/lib/docker:ro \
google/cadvisor