SET NAMES UTF8;
DROP DATABASE IF EXISTS xz;
CREATE DATABASE xz CHARSET=UTF8;
USE xz;
CREATE TABLE laptop(
     lid int,
     title varchar(30),
     price decimal(8,2),
     stockCount smallint,
     shelfTime date,
     isIndex bool
);
INSERT INTO laptop VALUES
(1,'戴尔起飞本',5999,200,'2018-8-7',1),
(2,'惠普起飞本',8999,80,'2018-8-1',0),
(3,'华硕起飞本',4999,700,'2018-8-2',0),
(4,'联想起飞本',4999,800,'2018-8-5',1);
SELECT * FROM laptop;