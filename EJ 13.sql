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
  
delimiter ##
create procedure cantidad(edad int)
begin 
    select count(*) from persona where age = edad;
end ##
delimiter ;
call cantidad (21);

DROP TABLE PERSONA;