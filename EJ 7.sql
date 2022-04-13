use challengesql;
  create table persona(
    id int auto_increment,
    value int,
    name varchar (15),
    Amount_Sold int,
    primary key  (id)
    );

 insert into persona
 (name,Amount_Sold)
 value 
 ("Cup ", 11),
 ("Saucer", 22),
 ( "Plate", 46),
 ("Fork", 34),
 (" Spoon", 45),
 ("Knife ", 78),
 ("Mug", 23),
 ("Glass", 64),
 ("FTumblerork", 24);
 
 SELECT
     id,name,Amount_Sold
FROM
     persona
ORDER BY
     Amount_Sold desc limit 5;
     
DROP TABLE PERSONA;