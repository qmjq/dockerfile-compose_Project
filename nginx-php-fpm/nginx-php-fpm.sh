#!/bin/bash
cd /app/soft
#[ ! -f nginx/conf/nginx.conf ]  && mv /tmp/nginx.conf nginx/conf/  && [ ! -f nginx/conf/vhost/web.conf ] && mkdir -p nginx/conf/vhost &&  mv /tmp/web.conf /tmp/404.conf  nginx/conf/vhost/
#[ ! -f php/etc/php.ini ]  && mv /tmp/php.ini php/etc/ && [ ! -f php/etc/php-fpm.conf ] && mv /tmp/php-fpm.conf php/etc/  && mkdir -p  php/etc/php-fpm.d  mv /tmp/www.conf php/etc/php-fpm.d/
php/sbin/php-fpm -c php/etc/php.ini -y php/etc/php-fpm.conf  &&  nginx/sbin/nginx "-g"  "daemon off;"
