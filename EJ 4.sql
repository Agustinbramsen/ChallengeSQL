use challengesql;
  create table persona(
    id int auto_increment,
    value int,
    primary key  (id)
    );

 insert into persona
 (value)
 value 
 (4),
 (11),
 (57),
 (24),
 (47);
 
 select id,IF(value % 2 = 0, "par", "impar") as value from persona;
 
 DROP table persona;