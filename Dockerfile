FROM redis:3
MAINTAINER xuxiang <downloadxu@163.com>
COPY Shanghai /etc/localtime
COPY redis.conf /usr/local/etc/redis/redis.conf
RUN chown -R redis:redis /data/*
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
