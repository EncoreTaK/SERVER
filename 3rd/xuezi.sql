SET NAMES UTF8;
DROP DATABASE IF EXISTS xuezi;
CREATE DATABASE xuezi CHARSET=UTF8;
USE xuezi;
CREATE TABLE laptop_family(
             fid int primary key,
	     fname varchar(16) unique key,
	     laptopCount smallint
);
INSERT INTO laptop_family VALUES
(10,'戴尔燃700',3),
(20,'小米Air',2),
(30,'联想小新系列',2);
CREATE TABLE laptop(
             lid int primary key,
	     title varchar(128) unique key,
	     price decimal(8,2),
	     shelfTime date,
	     stockCount smallint,
	     isOnsale bool,
	     fid int
);
INSERT INTO laptop VALUES
(1,'戴尔燃700亮',5999,'2018-7-8',89,1,10),
(2,'戴尔燃700旗舰',29999,'2018-5-8',19,1,10),
(3,'戴尔燃700突击',3999,'2018-7-27',188,1,10),
(4,'小米Air Lite',2999,'2018-8-27',84,1,20),
(5,'小米Air pro',6999,'2018-8-7',198,1,20),
(6,'联想小新Air pro',5999,'2018-8-7',2008,1,30),
(7,'联想小新系列Air Lite',3999,'2018-1-7',0,0,30);
UPDATE laptop SET price=3599,stockCount=150 WHERE lid=3;
DELETE FROM laptop WHERE lid=5;
UPDATE laptop_family SET laptopCount=laptopCount-1 WHERE fid=20;
DELETE FROM laptop WHERE lid=1;
UPDATE laptop_family SET laptopCount=laptopCount-1 WHERE fid=10;
SELECT * FROM laptop_family;
SELECT * FROM laptop;


