USE work ;
select * from product;
DELIMITER $$
CREATE PROCEDURE checkamount(IN acc_id INT)
BEGIN 
    SELECT amount 
    FROM product 
	WHERE acc_id = id ;
END $$
DELIMITER ;

-- callprocedure
CALL checkamount(1);

