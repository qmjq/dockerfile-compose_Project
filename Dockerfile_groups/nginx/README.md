启动方法：

        1 不挂volume载定制化配置,使用容器里面修改默认配置：

            docker build -t qmjq/nginx .

            docker run -itd --name qmjq_nginx  --volume /data/nginx/html:/app/soft/nginx/html --volume /data/nginx/logs:/app/soft/nginx/logs  -p 80:80 -p 443:443 qmjq/nginx

        2 挂载volume定制化配置,宿主机可以直接修改配置：

            docker build -t qmjq/nginx .

            docker run -itd --name qmjq_nginx  --volume /data/nginx/conf/nginx.conf:/app/soft/nginx/conf/nginx.conf --volume /data/nginx/conf/vhost:/app/soft/nginx/conf/vhost --volume /data/nginx/html:/app/soft/nginx/html --volume /data/nginx/logs:/app/soft/nginx/logs -p 80:80 -p 443:443 qmjq/nginx

