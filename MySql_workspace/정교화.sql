/*정교화*/

select author_lname from books;
/*중복제거 select 앞에 명시되어야함 이름이 중복된것들을 distinct가 없애줌*/
select distinct author_lname from books;
select released_year from books;
select distinct released_year from books;


select distinct author_lname from books;

select distinct concat(author_fname, author_lname)from books;
select distinct author_fname, author_lname from books;

/*order by 정렬*/
select distinct author_lname from books order by author_lname;
select title from books order by title;

/*order by xx desc 오름차순 역순*/
select author_lname from books order by author_lname desc;
select released_year from books order by released_year asc ;
select title, released_year, pages from books order by released_year;

select title, author_fname, author_lname from books order by 1 desc;
select author_fname, author_lname from books order by author_lname, author_fname;

/*LIMIT 몇개의 결과값을 조회할지 특정할수 있는 연산자  */
select title from books LIMIT3;
select title, released_year from books order by released_year desc limit 5;
select title, released_year from books order by released_year desc limit 0, 5;

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 10,1;
SELECT * FROM tbl LIMIT 95,18446744073709551615;

SELECT title FROM books LIMIT 5, 123219476457;

SELECT title FROM books LIMIT 5, 50;

/*Like 검색을 좀 더 유용하게 만들어줌 ! */
/*% <- wildcard 위치에따라서 찾는 순서가 달라짐  */
select title, author_fname from books where author_fname like '%da%';
select title, author_fname from books where author_fname like 'da%';
select title, author_fname from books where author_fname like '%da';

select title from books where title like '%the';
select title from books where title like 'the%';

select title from books where title like '%the%';

SELECT * FROM books
WHERE author_fname LIKE '____';

SELECT * FROM books
WHERE author_fname LIKE '_a_';
 
select title from books where title like  '%stories';  
select title, pages from books order by pages desc limit 1;
select concat(title, ' - ' , released_year) as summary from books order by released_year desc limit 0,3;
select title, author_lname from books where author_lname like '% %';
select title, released_year, stock_quantity from books where stock_quantity order by stock_quantity  limit 3;

select 
title, author_lname 
from books order by author_lname, title; 
select
 concat('MY FAVORITE AUTHOR IS ', upper(author_fname),' ' , upper(author_lname), '!')as yell from books;




select concat(title, '-', years) from books where books like '%%44'; 






