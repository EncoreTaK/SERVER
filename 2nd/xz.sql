#设置客户端连接服务器端使用的编码为utf8
SET NAMES UTF8;

DROP DATABASE IF EXISTS xz;
CREATE DATABASE xz CHARSET=UTF8;
USE xz;
CREATE TABLE user(
     uid INT,
     uname VARCHAR(20),
     upsd VARCHAR(20),
     emails VARCHAR(20),
     phone  VARCHAR(11),
     sex    VARCHAR(1),
     userName VARCHAR(20),
     registerTime VARCHAR(10)
);
INSERT INTO user VALUES('1','AA','123456','123456@qq.com','1234567890','W','ACAE','2018-09-01');
INSERT INTO user VALUES('2','BB','345678','345678@qq.com','1234567891','W','BCAE','2018-09-02');
INSERT INTO user VALUES('3','CC','234567','234567@qq.com','1234567892','M','CCAE','2018-09-03');
INSERT INTO user VALUES('4','DD','456789','456789@qq.com','1234567893','M','DCAE','2018-09-04');
INSERT INTO user VALUES('5','EE','567890','567890@qq.com','1234567894','W','温泉','2018-09-05');

UPDATE user SET upsd='654321',emails='baidu@sina.com' WHERE uid='3';
DELETE FROM user WHERE uid='2';
SELECT * FROM user;

