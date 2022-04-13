use challengesql;
  create table persona(
	id int auto_increment,
    name varchar (15),
    country varchar (20),
    primary key  (id)
    );

 insert into persona
 (name,country)
 value 
	("Bob Smith", "United States"),
	("Jim Jones", "China"),
	("Sam White", "Japan"),
	("Jess Black", "Canada"),
	("Will Wilson", "Germany"),
	("Wilson Scott", "England"),
	("Scott Daniels", "France"),
	("Daniel Jackson", "Canada"),
	("Jack Johnson", "United States");
    
select * from  persona where country != ('United States') and country != ('Canada'); 

DROP TABLE PERSONA;