USE work;
CREATE VIEW view1 as 
SELECT id , name 
FROM customer;

SELECT * FROM view1;

CREATE VIEW view2 AS 
SELECT c.id , c.name ,p.order_id
FROM customer c 
INNER join product p
ON c.id = p.id ;

SELECT * FROM view2;
CREATE INDEX indxe ON customer(name);
SELECT name 
FROM customer 
WHERE  name = "Anas";
