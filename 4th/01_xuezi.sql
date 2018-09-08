SET NAMES UTF8;
DROP DATABASE IF EXISTS xuezi;
CREATE DATABASE xuezi CHARSET=UTF8;
USE xuezi;
CREATE TABLE laptop_family(
             fid int primary key,
	     fname varchar(16) unique key not null,
	     laptopCount smallint not null
);
INSERT INTO laptop_family VALUES
(10,'戴尔燃700',3),
(20,'小米Air',2),
(30,'联想小新系列',2),
(40,NULL,NULL);
CREATE TABLE laptop(
             lid int primary key auto_increment,
	     title varchar(128) unique key,
	     price decimal(8,2),
	     shelfTime date,
	     stockCount smallint default 9999,
	     isOnsale bool,
	     fid int,
	     foreign key(fid) references laptop_family(fid)
);
INSERT INTO laptop VALUES
(NULL,'戴尔燃700亮',5999,'2018-7-8',default,1,10),
(NULL,'戴尔燃700旗舰',29999,'2018-5-8',default,1,10),
(NULL,'戴尔燃700突击',3999,'2018-7-27',default,1,10),
(NULL,'小米Air Lite',2999,'2018-8-27',default,1,20),
(NULL,'小米Air pro',6999,'2018-8-7',default,1,20),
(90,'联想小新Air pro',5999,'2018-8-7',default,1,30),
(NULL,'联想小新系列Air Lite',3999,'2018-1-7',default,0,30);
INSERT INTO laptop(lid,title) VALUES(NULL,'戴尔燃800亮');


UPDATE laptop SET price=3599,stockCount=150 WHERE lid=3;
DELETE FROM laptop WHERE lid=5;
UPDATE laptop_family SET laptopCount=laptopCount-1 WHERE fid=20;
DELETE FROM laptop WHERE lid=1;
UPDATE laptop_family SET laptopCount=laptopCount-1 WHERE fid=10;
SELECT * FROM laptop_family;
SELECT * FROM laptop;


