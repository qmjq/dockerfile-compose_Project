启动方法：
        
            docker build -t qmjq/Subversion .
            docker run --name qmjq_svn  --volume --volume /data/svndata:/data/svndata  -p 3690:3690 qmjq/Subversion

