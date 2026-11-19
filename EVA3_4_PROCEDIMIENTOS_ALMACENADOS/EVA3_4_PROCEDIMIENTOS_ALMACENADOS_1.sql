delimiter $$

create function generar_rfc(
    p_nombre varchar(50),
    p_ap_pat varchar(50),
    p_ap_mat varchar(50),
    p_fecha_nac date
) 
returns varchar(10) 
deterministic
begin
    declare primero varchar(2);
    declare segundo varchar(1) default 'x';
    declare tercero varchar(1);
    declare cuarto varchar(6);

    set primero = left(p_ap_pat, 2);
    set segundo = ifnull(nullif(left(p_ap_mat, 1), ''), 'x');
    set tercero = left(p_nombre, 1);
    set cuarto = date_format(p_fecha_nac, '%y%m%d');

    return upper(concat(primero, segundo, tercero, cuarto));
end $$

delimiter ;