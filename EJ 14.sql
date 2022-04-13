delimiter ##
create procedure semana(fecha date)
begin 
    
    select CASE DAYOFWEEK(fecha) 
		WHEN 1 THEN "Domingo"
		WHEN 2 THEN "Lunes"
		When 3 then "Martes"
		When 4 then "Miercoles"
		When 5 then "Jueves"
		When 6 then "Viernes"
		When 7 then "Sabado"
	END as Dias_semana;
end ##
delimiter ;

call semana ("2022-02-02")