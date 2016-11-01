cd /data
sed -i "s/\$port/$port/g" redis.conf
sed -i "s/\$databases/$databases/g" redis.conf
sed -i "s/\$master_port/$master_port/g" redis.conf
redis-server /data/redis.conf
