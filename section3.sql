


CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
  
  INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
  
  select name from cats;
  select age from cats;
  select name, age from cats where breed = 'Tabby';
  
  select cat_id, age from cats where cat_id = age;
  
  select name, breed from cats;
  select name, breed from cats;
  
  select cat_id from cats;
  
  select cat_id AS id, name from cats;
  
  select * from cats where age = 4;
  select * from cats where name = 'egg';
  select * from cats where cat_id =3;
  
  select * from cats;
 
  update  cats set age = 14 where name = 'Misty';
  update  cats set name = 'Misty' where name = 'Soity';
  update cats set breed = 'Shorthair' where breed = 'Tabby';
  
  update cats set name = 'Jack' where name = 'Jackson';
  update cats set breed = 'BritishShorthair' where name = 'Ringo';
  update cats set age = 12 where breed = 'Maine Coon';
  select * from cats where breed = 'Maine Coon';
  
  delete from cats where name = 'egg';
  
  select * from cats where age =4;
  delete from cats  where age =4;
  
delete from cats where cat_id = age;

delete from cats;
  
  
  
   
  
  
  
  
  
  
  
  
  drop table cats;
  