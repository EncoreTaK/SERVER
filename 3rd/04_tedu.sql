SET NAMES UTF8;
DROP DATABASE IF EXISTS tedu;
CREATE DATABASE tedu CHARSET=UTF8;
USE tedu;
CREATE TABLE dept(
     did smallint primary key,
     dname varchar(10),
     empCount smallint
);
CREATE TABLE emp(
     eid int ,
     ename varchar(6) unique key,
     sex bool,
     phone char(11) unique key,
     birthday date,
     salay decimal(7,2),
     deptld smallint
);
INSERT INTO dept VALUES
(10,'研发部',3),
(20,'市场部',2),
(30,'运营部',2);
INSERT INTO emp VALUES
(1,'tom',1,18823456789,'1990-3-5',5000,10),
(2,'tmy',1,18823451789,'1990-2-5',5000,10),
(3,'tew',0,18823455789,'1990-8-5',5000,10),
(4,'twe',0,18823454789,'1990-4-5',5000,20),
(5,'tsm',0,18823457789,'1990-2-5',5000,20),
(6,'tms',1,18823480789,'1990-7-5',5000,30),
(7,'toq',1,18823458789,'1990-2-5',5000,30);
SELECT * FROM dept;
SELECT * FROM emp;

