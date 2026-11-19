delimiter $$

create procedure insertar_rfc(
    in p_nombre varchar(50),
    in p_ap_pat varchar(50),
    in p_ap_mat varchar(50),
    in p_fecha_nac date
)
begin
    declare v_rfc varchar(10);

    set v_rfc = generar_rfc(p_nombre, p_ap_pat, p_ap_mat, p_fecha_nac);

    insert into persona (nombre, ap_pat, ap_mat, fecha_nac, rfc)
    values (p_nombre, p_ap_pat, p_ap_mat, p_fecha_nac, v_rfc);
end $$

delimiter ;