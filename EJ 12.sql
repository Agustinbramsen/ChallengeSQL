use challengesql;
  create table persona(
    id int auto_increment,
    idNac int,
    name varchar (15),
    age int,
    primary key  (id)
    );
    
     create table fvto(
    id int auto_increment,
    Fvto date,
    primary key  (id)
    );
    
 insert into persona
 (idNac,name,age)
 value 
 ( 1 ,"Bob ",21),
 (1  ,"Sam",19),
 (2 , "Jill",18),
 (3 ,"Jim",21),
 (4 , "Sally",19),
 (2 ,"Jess ",20),
 (3 , "Will",21);
 
 
insert into Fvto
 (id,fvto)
 value 
(1,'2023-10-01'),
(2,'2025-05-22'),
(5,'2023-01-22'),
(6,'2028-06-15');

 select p.id,name,age,Fvto
 from persona as p
LEFT JOIN fvto as f ON p.id = f.id;

DROP TABLE PERSONA;
DROP TABLE FVTO;