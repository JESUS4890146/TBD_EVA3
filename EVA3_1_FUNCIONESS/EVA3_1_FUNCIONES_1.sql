DELIMITER $$
create function mostrar_msj(mensaje varchar(50))
returns varchar(100) deterministic
begin
	declare mi_msj varchar(100);
    set mi_msj =concat('hola',msj);
    return mi_msj;
end$$
DELIMITER ;