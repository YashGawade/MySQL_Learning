-- to update the user info

USE tflecommerce;

DELIMITER //

CREATE PROCEDURE UpdateUser(
  IN p_user_id INT,
  IN p_email varchar(50),
  IN p_address varchar(225)
  )
  
  BEGIN
  
  UPDATE users
  Set email=p_email , address=p_address
  WHERE id=p_user_id ;
  
  END //

DELIMITER ;

CALL UpdateUser ( 1, '2nd@gmail', 'pune')