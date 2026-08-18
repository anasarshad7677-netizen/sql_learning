-- left and right join
USE work;

SELECT * FROM 
customer c 
left join product p 
on c.id = p.id ;

SELECT * FROM  
customer c 
right join product p 
on c.id = p.id;