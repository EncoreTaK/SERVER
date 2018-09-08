#删除数据库jd，如果存在的话
DROP DATABASE  IF EXISTS jd;
#创建数据库名称叫jd
CREATE DATABASE jd;
#进入数据库jd
USE jd;
#创建数据表
CREATE TABLE emp(
  id INT, #integer整数整形
  name VARCHAR(16),
  addr VARCHAR(16),
  phone VARCHAR(11)
);

USE jd;
CREATE TABLE product(
    lid   INT,
    title VARCHAR(120),
    PRICE VARCHAR(10)
);
USE jd;
#插入数据
INSERT INTO product VALUES('1','q','88');
INSERT INTO product VALUES('2','w','13');
INSERT INTO product VALUES('3','e','18');
INSERT INTO product VALUES('4','r','131');
INSERT INTO product VALUES('5','t','31');

#查询数据
SELECT * FROM product;