CREATE DATABASE prime;
USE prime;

CREATE TABLE accounts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    balance DECIMAL(15,2)
);

INSERT INTO accounts (name, balance)
VALUES 
("Zeeshan", 210),
("Faizan", 434),
("Abdullah", 8799),
("kaif", 99081);
START TRANSACTION;
SELECT * FROM accounts;
UPDATE accounts SET balance = balance - 50 where id = 1 ;
UPDATE accounts SET balance = balance + 50 where id = 18 ; 
COMMIT;

START TRANSACTION;
SELECT * FROM accounts;
UPDATE accounts SET balance = balance - 50 where id = 1 ;
UPDATE accounts SET balance = balance + 50 where id = 18 ; 
ROLLBACK;

SELECT * FROM accounts;