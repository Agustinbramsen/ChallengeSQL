use challengesql;
  create table persona(
	id int auto_increment,
    idNac int,
    name varchar (15),
    age int,
    primary key  (id)
    );
    
     create table fvto(
     id int auto_increment primary key,
    Fvto date
    );
    
 insert into persona
 (idNac,name,age)
 value 
 (1 ," Bob ", 21),
 (1 ," Sam" , 19),
 (2 , "Jill" , 18),
 (3 ," Jim" , 21),
 (4 ," Sally" , 19),
 (2 , " Jess " , 20),
 (3 , " Will" , 21 );
 
  insert into Fvto
 (Fvto)
 value 
 ("2023/10/01 "),
 ("2025/05/22 "),
 ("2023/01/22"),
 ("2028/06/15 ");
 
 /*Esta en la primera opcion del desafio, utilizo la seccion de stored procedures que se encuentra en schemas, para generar el create y aplicarlo 
 directamente para utilizar solo las call. 
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_info`(in p_id int)
BEGIN
IF NOT EXISTS( SELECT ID FROM PERSONA WHERE id=p_id)
THEN
SELECT -1 AS OUTPUT;
ELSE
delete
from persona
where ID=p_id;
SELECT 0 AS OUTPUT;
end if;
end

*/
call Delete_info (1);


DROP TABLE FVTO;
DROP TABLE PERSONA;