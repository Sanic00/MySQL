/*
일대일 관계 

일대다 관계
 
다대다 관계

*/

create table customers(
	id INT auto_increment primary key,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100)
);