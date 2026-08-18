CREATE DATABASE work;
USE work;
CREATE TABLE customer(
id INT PRIMARY KEY ,
name VARCHAR(30) NOT NULL,
city VARCHAR(30)
);
CREATE TABLE product(
order_id INT PRIMARY KEY ,
id INT ,
amount INT 
);
INSERT INTO customer
VALUES
(1,"anas","lahore"),
(2,"Tayyaba ","lahore"),
(3,"areeba","lahore"),
(4,"abdullah","lahore");

INSERT INTO product(order_id,id,amount)
VALUES
(01,1,324),
(02,2,3243),
(03,2,3244),
(04,4,32434),
(05,5,32465);
-- innerjoin-- 
SELECT c.id,c.name,p.amount
FROM customer c
INNER JOIN product p
ON c.id = p.id ;