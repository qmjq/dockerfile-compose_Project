说明：

    image: 10.100.12.181:5000/tc-centos
    镜像在镜像仓库10.100.12.181 ，tc-centos镜像的dockerfile文件在Dockerfile_groups/tc-centos-jdk 。
    启动方法：docker stack deploy -c docker-stack-tc.yml tc
    修改docker-stack-tc.yml 文件以后需要更新服务集群。
    更新方法：docker stack up -c docker-stack-tc.yml tc  

    更多例子： docker-stack-tc-cloud01.yml docker-stack-tc-cloud02.yml docker-stack-dhcs-182.yml
 
myweb: http://qmjq.github.io

