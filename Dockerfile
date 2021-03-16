From debian:latest
Run apt-get update -y --no-install-recommends && apt-get upgrade -y --no-install-recommends
Run apt-get install vim nginx php php-fpm php-dev php-mysql -y
Run usermod -u 1000 www-data 
Run apt-get install default-mysql-client -y && apt-get install composer -y
Run apt-get install php-curl