-- group by clause-- 
use insta;

SELECT age , max(followers)
FROM user
GROUP BY age
ORDER BY age ASC
;

SELECT id , name,age
FROM user 
GROUP BY age 
HAVING age >20 ; 

UPDATE user 
set followers = 600
where id  = 2 ;
SELECT * FROM user ;
DELETE FROM user 
WHERE id = 2;

DELETE FROM user 
where id = 2 
;

ALTER TABLE user 
ADD COLUMN city VARCHAR (30) DEFAULT "DELHI"
;
select * from user;
ALTER TABLE user
DROP COLUMN age 
;

ALTER TABLE instauser 
RENAME TO user ;

ALTER TABLE user 
CHANGE COLUMN city address VARCHAR (30);

DROP TABLE POST;
TRUNCATE TABLE user;