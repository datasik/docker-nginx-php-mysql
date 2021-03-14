#!/bin/bash
docker-compose down --remove-orphans && sudo chown -R $USER:$USER data-dir
docker-compose build && docker-compose up -d
docker exec docker-nginx-php-mysql_web_1 /bin/bash -c "service php7.3-fpm start"
docker exec docker-nginx-php-mysql_web_1 /bin/bash -c "service nginx start"