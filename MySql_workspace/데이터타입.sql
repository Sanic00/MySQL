/*
char  vs  varchar
char 길이가 고정된다. 
길이가 고정된 텍스트는 char가 빠르다.
대부분은 varchar을 쓴다 
아메리카에서 대형은행 몇천만개의 유저정보 몇억건의 거래 이상이면 데이터타입에 신경 써야한다.
*/

create table dogs (
name char(5) not null, 
breed varchar(10)
);

select * from dogs;

insert into dogs (name, breed) values('bob','beagle');
insert into dogs (name, breed) values('robby','corgi'); 
insert into dogs (name, breed) values('Princess','corgi');

/*
DECIMAL
DECIMAL(5, 2)
5와 2가 의미하는건 5는 우선 숫자 총길이 2는 소수점 뒤에 자릿수를 얘기하는거임
정한 값보다 이상으로 값을 넣었을때는 반올림이 된다.
*/

/*
FLOAT, DOUBLE

*/
