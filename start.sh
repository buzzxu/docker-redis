#!/bin/sh
cd /data
sed -i "s/\$port/$port/g" redis.conf
sed -i "s/\$databases/$databases/g" redis.conf
redis-server /data/redis.conf
