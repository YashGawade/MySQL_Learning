USE tflecommerce;

DELIMITER //
-- THIS IS A STORE PROCEDURE TO LOGIN IN USER AND DISPLAY HIS ID NAME AND EMAIL.
CREATE PROCEDURE UserLogin (
  IN p_username varchar(50),
  IN p_password varchar(255)
  )
BEGIN

 SELECT id , username , email  from users 
 WHERE 
   username= p_username and password= p_password;
   
   END //

DELIMITER ;

CALL UserLogin( 'yash', '0925')