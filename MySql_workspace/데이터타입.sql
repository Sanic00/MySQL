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
DATE, TIME , DATETIME
 
*/

create table people (
name varchar(100),
birthdate date,
birthtime time,
birthdt datetime
);

insert into people(name , birthdate , birthtime, birthdt) 
values('padma','1983-11-11','18:07:35','1983-11-11 18:07:35');

insert into people(name , birthdate , birthtime, birthdt) 
values('lama','1945-11-11','18:07:35','1443-11-11 18:07:35');

insert into people(name , birthdate , birthtime, birthdt) 
values('tesla','1943-11-11','18:07:35','2000-11-11 18:07:35');

select * from people;

/*
CURDATE() - gives current date
CURTIME() - gives current time
NOW() gives current datetime
*/
select curdate();
select curtime();
select now();

insert into people(name , birthdate , birthtime, birthdt) 
values('Microwave',CURDATE() , CURTIME(), NOW());

/*day() 날짜를 추출 하는 함수 이다.*/
select name, day(birthdate) from people;
select name, month(birthdate) from people;
select name, monthname(birthdate) from people;
select name, hour(birthtime) from people;
select name, minute(birthtime) from people;  
select name, second(birthtime) from people;

select date_format('2020-10-14 22:33:33', '%w %m %y');

select date_format('2007-10-04 13:33:33', '%h %i %s');

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

/*
DATEMATH

*/
select name, birthdate, datediff(now(), birthdate) from people;
select birthdt, date_add(birthdt, interval 1 month) from people;

/*
TIMESTAMPS
1.타임스탬프가 무언가 생성되거나 업데이트된 때에 관한 정보나 메타데이터를 저장하는걸 
  가르키는 일반용어 
2.여러분이 게시물을 만들거나 시작 한 때, 테이블에 뭔가를 삽입한 때에 관한 
  정보를 저장하는걸 가르킨다.
  DATETIME 과 TIMESTAMPS는 동일해 보이지만 다르다 
 두개의 차이점은 서로가 지원하는 시간과 날짜의 범위가 다르다는거다.
 datetime 1000-01-01 ~ 9999년 까지 
 timestamp 1979 ~ 2038년까지 지원
 너가 만약 아주 오래전까지 또는 2038년이 넘는미래 거슬러 갈 수 있는 날짜를 저장해야 하면 datetime 
 datetime 8바이트 timestamp 4바이트이다
*/
create table comments(
content varchar(100), 
created_at timestamp default now()
);

insert into comments (content) values('lol what a funny article');
insert into comments (content) values('i found this offensive ');
insert into comments (content) values('wtf');
insert into comments (content) values('fy ');
 
 create table comments2 (
  content varchar(100),
  changed_at timestamp default now() on update current_timestamp
 );

insert into comments2(content) values('lolololool');
select * from comments2;
select * from comments;

select * from comments order by created_at desc;

/* 문제 */
 