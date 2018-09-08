SET NAMES UTF8;
DROP DATABASE IF EXISTS dangdang;
CREATE DATABASE dangdang CHARSET=UTF8;
USE dangdang;
CREATE TABLE book(
        bid int,
	title varchar(10),
	price decimal(5,2),#999.99
	pubDate date,
	isJia  bool
);
INSERT INTO book VALUES
(1,'当当',56,'2818-7-08',1),
(2,'不当',46,'2818-06-08',0),
(3,'当不',76,'2818-04-8',1),
(4,'当了',86,'2818-05-08',0);
UPDATE book SET title='当荡',isJia=1 WHERE bid=2;
DELETE FROM book WHERE bid=3;
SELECT * FROM book;


