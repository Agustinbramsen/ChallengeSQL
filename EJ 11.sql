use challengesql;
  create table persona(
    id int auto_increment,
    idNac int,
    name varchar (15),
    age int,
    primary key(id)
    );
    
     create table nacionalidad(
    id int auto_increment,
    DescNac varchar (15),
    primary key  (id)
    );
    
 insert into persona
 (idNac,name,age)
 value 
 ( 1 , "Bob " ,21),
 ( 1 ,"Sam" ,19),
 ( 2 ,"Jill" ,18),
 ( 3  ,"Jim" ,21),
 ( 4  ,"Sally" ,19),
 ( 2  ,"Jess " ,20),
 ( 3  ,"Will" ,21);
 
  insert into nacionalidad
 (DescNac)
 value 
 ("Argentino "),
 ("Italiano "),
 ("Español "),
 ("Alemán ");
 
 select p.id,DescNac,name,age
 from persona as p
JOIN nacionalidad as n ON n.id = p.idnac;

DROP TABLE persona;
DROP TABLE nacionalidad;

