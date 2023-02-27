create database user01;
use kensyu;

create table UserInfo1(
  userId char(10) not null primary key,
  userPassword char(10) not null,
  mailAddress char(30) not null,
  aplianceDate datetime not null,
  updateDate datetime not null 
  );
  
  
  select * from UserInfo;
    select * from UserInfo1;

  insert into UserInfo values("user1","asdf","abc@gmail.com",now(),now());
   insert into UserInfo values("user2","asdf","abc@gmail.com",now(),now());
   
  alter table userinfo modify userid char(10) primary key;
  
  delete from userinfo where updatedate='2023-02-08 11:06:32';
  
  drop table UserInfo;
  
  
  
  