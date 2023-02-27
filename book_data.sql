CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select database();
show databases;

create database book_shop;

use book_shop;

show tables;
/*source book_data.sql; 
CONCAT(x, y, z)결합
CONCAT(column, 'text', anotherColumn, 'more text')
CONCAT(column, ' ', anotherColumn, ' ')
*/
select author_fname, author_lname from books;

select concat('hello', 'world');
select concat('hello', '    ' ,'world');
select concat('hello', '.....' ,'world');

select concat(author_fname, ' ' ,author_lname) from books;

select concat(author_fname, ' ' ,author_lname) AS 'FullName' from books;

select author_fname AS first, author_lname AS last, 
concat(author_fname, ' ' , author_lname) AS full
from books;

/* concat_ws() */
select concat_ws(' - ', title, author_fname, author_lname) from books;

/* ----------------------------------------------------------------------------------------------------------------------------------------- */
/* SUBSTRING 의 인덱스는 1부터 시작함 보통 다른언어들은 0부터 시작한다. */
select substring('Hello World', 1, 4);
select substring('Hello World', 7);
/* SUBSTRING -3은 오른쪽부터 출력함 보통은 왼쪽부터 출력이 됨 그래서 결과값은 rld */
select substring('Hello World', -3);
select substring('Hello World', -7);

select title from books;
/* '' 때문에 오류가 난다 */
/*select substring('Where I'm Calling From: Selected Stories', 1, 10)from books;*/
select substring("Where I'm Calling From: Selected Stories", 1, 10);

select substring(title, 1, 10) from books;
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

/* concat 함수가 먼저 시작되는게 아닌 내부함수 즉 substring함수가 먼저 시작된다. */
select concat(substring(title, 1, 10), '...')as 'short title' from books;

/* replace 특정 문자를 제거하거나 모든 공백을 쉼표나 다른 문자로 바꾸고 싶은경우 사용 */
select replace('Hello World', 'Hell' , '%$#@');
select replace('Hello World', 'l' , '7');
select replace('Hello World', 'Hello' , 'go to the');
/* 공백을 and로 바꿈 */
select replace('cheese bread coffee milk', ' ', 'and');
select replace(title, 'e', '3') from books;
SELECT REPLACE(title, ' ', '-') FROM books;

select substring(replace(title, 'e', '3'), 1 , 10) as 'weird string' from books;

/* 문자열 반전 */
select reverse('Hello World');
select concat(author_fname, reverse(author_fname))from books;

/*문자의 개수를 세주는 함수*/
select char_length('Hello World');

select author_lname, char_length(author_lname)as 'length' from books;

select concat(author_lname, 'is' , char_length(author_lname), 'charachters long')
from books;
/*tip Sql-format.com 쿼리문 코드를 깔끔하게 정리해주는 사이트임*/

/*대문자 소문자로 반환하는 함수*/
select upper('Hello World');
select lower('HELLO WORLD');
select upper(title) from books;

select concat('MY FAVORITE BOOK IS THE ', upper(title)) from books;

SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

select reverse(upper('Why does my cat look at me with such hartred'));

/*	i - like - cats	*/

select replace(title, ' ' , '->') as title from books;


select
 author_lname as forwards, reverse(author_fname) as backwards 
 from books;
 
 SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwards
FROM
    books;

select upper(concat(author_lname ,' ', author_fname)) as 'full name in caps' from books;

select concat(title, 'was released in',  released_year) as blurb from books;

select title, char_length(title) as character_count from books;

select concat(substring(title, 1, 10), '...')as short_title,
concat(author_lname, ',', author_fname) as author, 
concat(stock_quantity, 'in stock') as quantity
from books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
select title from books;

select author_lname from books;
/*중복제거 select 앞에 명시되어야함 이름이 중복된것들을 distinct가 없애줌*/
select distinct author_lname from books;
select released_year from books;
select distinct released_year from books;





