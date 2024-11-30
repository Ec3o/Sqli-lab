FROM php:7.4-apache

# 安装 MariaDB 和 PHP 的 mysqli 扩展
RUN apt-get update && apt-get install -y \
    mariadb-server \
    mariadb-client \
    supervisor \
    && docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*

# 设置 MySQL 密码和数据库环境变量
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=vidar
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=pass

# 配置 MySQL 和 Apache 启动
# COPY ./my.cnf /etc/mysql/my.cnf
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./db.sql /var/lib/mysql/db.sql

# 拷贝 PHP 应用文件
COPY ./index.php /var/www/html/index.php
COPY ./style.css /var/www/html/style.css
COPY ./config.php /var/www/html/config.php
COPY ./background.png /var/www/html/background.png
COPY ./dashboard /var/www/html/dashboard
COPY ./vidar_background.png /var/www/html/dashboard/vidar_background.png
COPY flag /flag
RUN chmod 644 /etc/mysql/my.cnf
RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

# 拷贝启动脚本
COPY ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# 暴露 Apache 和 MySQL 服务端口
EXPOSE 80 3306

# 启动脚本
CMD ["/usr/local/bin/start.sh"]