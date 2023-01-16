#!/bin/bash

#docker run -d --name pma -e PMA_HOST=172.17.0.5 -e PMA_PORT=3306 -e PMA_ARBITRARY=1 \ 
#-v /home/ebloemer/pma/sessions:/sessions \
#-v /home/ebloemer/pma/config.user.inc.php:/etc/phpmyadmin/config.user.inc.php \
#-p 8081:80 \
#phpmyadmin:5


docker run --name pma -d -e PMA_HOST=172.17.0.5 -e PMA_PORT=3306 -p 8081:80 phpmyadmin:5