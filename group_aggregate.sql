USE insta;
SELECT * FROM USER 
LIMIT 3 ;
SELECT id, name ,followers FROM user
ORDER BY followers ASC ;

SELECT * FROM user 
limit 3;

SELECT max(followers) from user
limit 1 ;

SELECT AVG(age) from user;

SELECT COUNT(followers) 
FROM user
WHERE age >= 20 ;