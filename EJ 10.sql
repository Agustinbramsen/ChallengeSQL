use challengesql;
  create table persona(
	id int auto_increment,
    name varchar (15),
    age int,
    primary key (id)
    );

 insert into persona
 (name,age)
 value 
 ( "Bob ",21),
 ("Sam",19),
 ( "Jill",18),
 ("Jim",21),
 ( "Sally",19),
 ("Jess ",20),
 ( "Will",21);
  
 
select SUM(age) from persona;

DROP TABLE PERSONA;