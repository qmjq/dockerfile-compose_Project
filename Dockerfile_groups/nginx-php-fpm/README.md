启动方法：
	1 不挂volume载定制化配置,使用容器里面修改默认配置：
	    docker build -t qmjq/nginx-php-fpm .  
	    docker run --name qmjq_nginx-php-fpm  --volume /data/nginx/html:/app/soft/nginx/html --volume /data/nginx/logs:/app/soft/nginx/logs  -p 80:80 -p 443:443 -p 9000:9000 qmjq/nginx-php-fpm 
	1 挂载volume定制化配置,宿主机可以直接修改配置：
            docker build -t qmjq/nginx-php-fpm .
            docker run --name qmjq_nginx-php-fpm  --volume /data/nginx/conf/nginx.conf:/app/soft/nginx/conf/nginx.conf --volume /data/nginx/conf/vhost:/app/soft/nginx/conf/vhost --volume /data/nginx/html:/app/soft/nginx/html --volume /data/nginx/logs:/app/soft/nginx/logs  --volume /data/php/conf/php.ini:/app/soft/php/etc/php.ini -p 80:80 -p 443:443 -p 9000:9000 qmjq/nginx-php-fpm
