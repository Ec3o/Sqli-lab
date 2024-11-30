USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
-- 为用户授权
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS vidar;

USE vidar;

-- 创建 users 表
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- 向 users 表插入数据
INSERT INTO users (username, password) VALUES ('example_user', 'example_password');

-- 创建 pepole 表
CREATE TABLE IF NOT EXISTS people (
    id INT NOT NULL AUTO_INCREMENT,
    Identify_ID VARCHAR(100) NOT NULL,
    Blog VARCHAR(100) NOT NULL,
    Major VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- 向 pepole 表插入数据
INSERT INTO people (Identify_ID, Blog, Major)
VALUES
('l0tus', 'https://l0tus.vip', 'Pwn'),
('R1esbyfe', 'https://r1esbyfe.top/', 'Web'),
('ma5hr00m', 'http://ma5hr00m.top', 'Web'),
('ripple', 'https://rippleqaq.github.io', 'Web'),
('Doddy', 'https://blog.hiirachan.moe', 'Web'),
('daidr', 'https://im.daidr.me', 'Web'),
('BaiMeow', 'https://baimeow.cn', 'Web'),
('1ue', 'http://www.luelueking.com', 'Web'),
('feifei', 'https://www.cnblogs.com/biyifei', 'Crypto'),
('简', 'https://www.jian.pl', 'Reverse'),
('ba1van4', 'https://ba1van4.icu', 'Reverse'),
('yolande', 'https://y01and3.github.io/', 'Crypto'),
('h4kuy4', 'https://hakuya.work', 'Pwn'),
('Potat0', 'https://potat0.cc/', 'Web'),
('Summer', 'https://blog.m1dsummer.top', 'Web'),
('chuj', 'https://cjovi.icu', 'Pwn'),
('4nsw3r', 'https://4nsw3r.top/', 'Reverse'),
('0wl', 'https://0wl-alt.github.io', 'Pwn'),
('At0m', 'https://homeboyc.cn/', 'Web'),
('ek1ng', 'https://ek1ng.com', 'Web'),
('Liki4', 'https://github.com/Liki4', 'Web'),
('mysid', 'https://mysid.top', 'Blog'),
('Ec3o', 'http://tech.ec3o.fun', 'Web'),
('mantle', 'https://csharpermantle.github.io/', 'Full-Stack'),
('1sez', 'https://www.yizishun.com/', 'Pwn'),
('srf27', 'https://srf27.icu/', 'Crypto'),
('nacl', 'http://naclwww.xyz/', 'Crypto'),
('l1nk', 'http://l1nk.icu/', 'Web'),
('sh4ll0t', 'http://sh4ll0t.github.io/', 'Web'),
('addr3s5', 'http://addr3s5.top/', 'Reverse'),
('kiracoon', 'https://k1r4ca.top/', 'Web'),
('M1aoo0bin', 'https://z1nax5.github.io/', 'Pwn'),
('fc04db', 'http://fc04db.github.io/', 'Misc'),
('woshiluo', 'https://blog.woshiluo.com/', 'Full-Stack'),
('Ch405', 'https://ch405.live', 'Misc'),
('z221x', 'https://z221x.cc', 'Reverse');
