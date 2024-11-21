# 基于官方 MySQL 镜像
FROM crpi-so2cqseffq3l46dn.cn-chengdu.personal.cr.aliyuncs.com/docker_image_turn_ark/docker_mysql_image:8.0

# 设置环境变量以自动配置 MySQL
ENV MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_DATABASE=duel_person
ENV MYSQL_USER=docker_web
ENV MYSQL_PASSWORD=123456

# 将初始化脚本和备份文件复制到容器内
COPY init.sql /docker-entrypoint-initdb.d/
COPY backup.sql /docker-entrypoint-initdb.d/

# 通过 MySQL 官方镜像的 entrypoint，自动执行初始化脚本
