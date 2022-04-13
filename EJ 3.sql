use challengesql;
  create table persona(
    id int auto_increment,
    Year int ,
    primary key  (id)
    );

 insert into persona
 (Year)
 value 
 (1776),
 (2001),
 (1643),
 (1865),
 (1969);
 
Select left (year,2)+1
From persona;

DROP TABLE persona;
