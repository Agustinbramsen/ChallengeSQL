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
/*Con esta query lo que hacemos es verificar si existe la entrada que hay en in para luego entragarnos el out 
luego procede a borrar los parametros en la tabla indistintamente del resultado de la validacion.*/
DELIMITER //
Create procedure PersonaDelete (IN id_parametro INT, OUT resultado INT)
BEGIN
SELECT IF (EXISTS (SELECT 1 FROM persona WHERE ID=id_parametro), 0, -1) SI;
DELETE FROM persona WHERE ID = id_parametro;
DELETE FROM Fvto WHERE ID = id_parametro;
END//

CALL PersonaDelete (1,@SI);
SELECT * FROM SI;
 
DROP TABLE FVTO;
DROP TABLE PERSONA;