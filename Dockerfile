FROM redis:3-alpine
MAINTAINER xuxiang <downloadxu@163.com>
COPY Shanghai /etc/localtime
COPY redis.conf /data/redis.conf
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh
RUN chown -R redis:redis /data/*
EXPOSE 6379/tcp
ENTRYPOINT ["sh","/data/start.sh"]
