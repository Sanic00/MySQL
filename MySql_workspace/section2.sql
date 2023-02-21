show databases;

create database user_test;

use user_test;

create table cats (
name varchar(50), 
age int
);

insert into cats(name, age) values('Blue', 7);
insert into cats(name, age) values('Mango', 1);
insert into cats (name, age) values('Meatball', 5), ('Turky' , 3);
select * from cats;

create table people (
first_name varchar(20),
last_name varchar(20),
age int
);

insert into people(first_name, last_name, age)values('Tina', 'Belcher', 13);

insert into people(first_name, last_name, age)
values('Linda', 'Belcher', 45), 
('Phillip', 'Frond', 38),
('Gil', 'Bert', 28);

select * from people;

drop table people;

create table cats2 (
name varchar(100) not null,
age int not null
);


insert into cats2 (name) values('alli');



create table pastries (
name varchar(50),
quanity int
);

desc pastries;
drop table pastries;

show tables;

show columns from dogs;
desc cats;
drop table cats;
drop table dogs;

show tables;

create table cat3 (
	name varchar(20) default 'no name provided',
    age INT default 99
    );
    
    desc cat3;
    select * from cat3;
    
    insert into cat3(age) values(13);
    insert into cat3(name) values('Mapa');
    
    create table cats4 (
		name varchar(20) not null default 'unamed',
        age int not null default 99
        );

create table unique_cats (
cat_id int primary key,
name varchar(20) not null,
age int not null
);

create table unique_cats2 (
cat_id int,
name varchar(100) not null,
age int not null,
primary key (cat_id)
);

create table Employees (
id int primary key auto_increment,
last_name varchar(30) not null,
first_name varchar(30) not null, 
middle_name varchar(30) ,
age integer not null,
current_status varchar(30) not null default 'employed'
);

Insert into employees(first_name, last_name, age)values('sakamoto', 'smith', 58);
select * from employees;
desc Employees;

drop table Employees;