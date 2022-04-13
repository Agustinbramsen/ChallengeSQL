use challengesql;
  create table persona(
    id int auto_increment,
    name varchar (15),
    primary key  (id)
    );

 insert into persona
 (name)
 value 
 (" Bob "),
 (" Sam"),
 (" Jill"),
 (" Jim"),
 (" Sally"),
 (" Jess"),
 (" Will");

Select id, CONCAT('¡Hola ', name , '! ¿Cómo estas hoy?') as Saludo from persona;

DROP TABLE PERSONA; 