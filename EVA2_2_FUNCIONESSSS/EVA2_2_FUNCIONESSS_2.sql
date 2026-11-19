delimiter $$
create function es_par(valor int)
returns varchar(50) deterministic
begin
   declare residuo int default 0;
   declare msj varchar(50);
   set residuo = mod(valor,2);
   if residuo =0 then
      set msj='el valor es par';
   else
      set msj = 'el valor es impar';
   end if;
return msj;
end $$
delimiter ;