-- 创建数据库（如果未通过环境变量自动创建）
CREATE DATABASE IF NOT EXISTS your_database_name;

-- 切换到目标数据库
USE your_database_name;

-- 创建表 duel_person
CREATE TABLE IF NOT EXISTS duel_person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score INT NOT NULL
);

-- 创建用户并授权
CREATE USER IF NOT EXISTS 'docker_web'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON your_database_name.* TO 'docker_web'@'%';
FLUSH PRIVILEGES;
