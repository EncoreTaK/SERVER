SET NAMES UTF8;
DROP DATABASE IF EXISTS tedu;
CREATE DATABASE tedu CHARSET=UTF8;
USE tedu;
CREATE TABLE dept(
                did int primary key,
		dname varchar(5) unique
);
INSERT INTO dept VALUES
(10,'研发部'),
(20,'测试部'),
(30,'运营部'),
(40,'市场部');
CREATE TABLE emp(
                eid int primary key auto_increment,
		ename varchar(12),
		sex bool,
		phone char(11) unique,
		birthday date,
		salary decimal(8,2),
		deptId int,
		foreign key(deptId) references dept(did)
);
INSERT INTO emp VALUES
(NULL,'TOM',1,18846401234,'1990-8-7',6000,10),
(NULL,'SAM',1,18846402345,'1991-8-7',6000,10),
(NULL,'KATE',0,18846403456,'1997-8-9',4000,10),
(NULL,'chen',1,18846404567,'1997-8-9',8000,10),
(NULL,'xiao',1,18846405678,'1997-1-9',11000,10),

(NULL,'zhong',1,18846411234,'1990-8-7',3000,20),
(NULL,'yang',1,18846412345,'1991-8-7',5000,20),
(NULL,'kong',1,18846413456,'1997-8-9',4000,20),
(NULL,'xie',1,18846414567,'1997-8-9',8000,20),
(NULL,'ye',1,18846415678,'1997-2-9',12000,20),

(NULL,'wu',1,18846421234,'1990-8-7',5000,30),
(NULL,'xu',1,18846422345,'1991-8-7',6000,30),
(NULL,'zhang',0,18846423456,'1997-8-9',4000,30),
(NULL,'huang',0,18846424567,'1997-8-9',9000,30),
(NULL,'lu',1,18846425678,'1997-8-9',24000,NULL);
SELECT * FROM dept;
SELECT * FROM emp;

