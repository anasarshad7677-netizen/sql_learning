USE work ;
SELECT * FROM customer AS c
LEFT JOIN product AS p 
ON p.id = c.id 
WHERE p.id IS NULL;
-- subquery
SELECT * 
FROM product
WHERE amount > (
SELECT AVG(amount)
FROM product
);
SELECT  name , 
  (   SELECT count(*)
	  FROM product p
      WHERE c.id = p . id 
  ) as product_count
FROM customer c ;

SELECT 
summary.id ,
summary.avg_amount
FROM (
		SELECT 
        id ,
        avg(amount) as avg_amount 
        FROM 
        product 
        GROUP BY id 
) as summary ;