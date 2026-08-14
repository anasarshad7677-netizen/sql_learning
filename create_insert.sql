CREATE DATABASE insta;

USE insta ;
CREATE TABLE user (
id INT , 
age INT , 
name VARCHAR(30) NOT NULL ,
email VARCHAR(30) UNIQUE ,
followers INT DEFAULT 0 , 
CONSTRAINT CHECK (age > 13),
PRIMARY KEY (id)
);

CREATE TABLE post(
post_id INT PRIMARY KEY, 
content VARCHAR (100), 
user_id INT, 
FOREIGN KEY (user_id) REFERENCES user(id)
);
INSERT INTO user
(id,name,email,followers,age)
VALUES 
(1,"anas arshad","anasarshad76@gmail.com",6567,20)
;
INSERT INTO user
(id,name,email,followers,age)
VALUES 
(2,"ali raza","aliraza21@gmail.com",4821,22),
(3,"hamza khan","hamzakhan45@gmail.com",7392,21),
(4,"usman ahmed","usmanahmed12@gmail.com",3156,23),
(5,"bilal shah","bilalshah89@gmail.com",8245,20)
;
select * from user
;
INSERT INTO post(post_id , content,user_id)
VALUES
(105,"HEY THIS IS WORK",1);

SELECT * FROM user 
WHERE age between 10 AND 25;




