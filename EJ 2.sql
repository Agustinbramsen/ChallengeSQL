use challengesql;
Create table personas(
	Id_persona int auto_increment primary key,
    Division_id int ,
    Year year,
    Revenue int
    );

 insert into personas
 (Division_id,Year,Revenue)
 value 
 ("1" , 2018, 60),
 ("1" , 2021, 40),
 ("1" , 2020, 70),
 ("2" , 2021, -10),
 ("3" , 2018, 20),
 ("3" , 2016, 40),
 ("4" , 2021, 50);
 
select Division_id
from personas
Where Year = 2021 And Revenue > 0;

DROP TABLE personas;