
CREATE DEFINER=`admin`@`localhost` FUNCTION `hola`(mensaje varchar(50)) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    DETERMINISTIC
return concat('hola',mensaje)$$

