USE work ;
SELECT * FROM customer;
select * from product;
-- outer join 
SELECT * FROM customer as c 
LEFT JOIN product as p 
ON c.id = p.id
UNION 
SELECT * FROM customer as c 
LEFT JOIN product as p 
ON c.id = p.id
;

-- --cross join 
SELECT * FROM customer 
CROSS JOIN product;
-- self join 
SELECT *
FROM customer as c 
JOIN product as p 
ON c.id = p.id ;

