#ɾ�����ݿ�jd��������ڵĻ�
DROP DATABASE  IF EXISTS jd;
#�������ݿ����ƽ�jd
CREATE DATABASE jd;
#�������ݿ�jd
USE jd;
#�������ݱ�
CREATE TABLE emp(
  id INT, #integer��������
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
#��������
INSERT INTO product VALUES('1','q','88');
INSERT INTO product VALUES('2','w','13');
INSERT INTO product VALUES('3','e','18');
INSERT INTO product VALUES('4','r','131');
INSERT INTO product VALUES('5','t','31');

#��ѯ����
SELECT * FROM product;