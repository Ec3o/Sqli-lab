#!/bin/sh

# 启动 supervisor 并放入后台运行
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf &

# 等待 mysql 进程启动
while ! service mariadb status  | grep socket; do
    echo "Waiting for mysql to start..."
    sleep 1
done

# 加载数据库
mysql -u root -ppassword < /var/lib/mysql/db.sql

# 保持容器持续运行
tail -f /dev/null