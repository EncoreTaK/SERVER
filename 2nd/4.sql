DROP DATABASE IF EXISTS tedu;
CREATE DATABASE tedu;
USE tedu;
CREATE TABLE student(
     sid   INT,
     name  VARCHAR(20),
     sex   VARCHAR(1),
     score INT		
);
USE tedu;
INSERT INTO student VALUES('1','AAAAAAAAAAAA','W','90');
INSERT INTO student VALUES('2','BSSSSSSSSSSS','M','91');
INSERT INTO student VALUES('3','CSSSSSSSSSSS','W','93');
INSERT INTO student VALUES('4','MSSSSSSSSSSS','M','95');
SELECT * FROM student;
