FROM redis:3
MAINTAINER xuxiang <downloadxu@163.com>
COPY Shanghai /etc/localtime
COPY redis.conf /data/redis.conf
RUN chown -R redis:redis /data/*
EXPOSE 6379/tcp
CMD [ "redis-server","/data/redis.conf"]
