/*not equal*/
/*2017을 제외한 거를 출력*/
select title, released_year from books where released_year != 2017; 

/*not like*/
select title from books where title not Like '%W%';

SELECT * FROM books
WHERE title NOT LIKE '%e%';
/*Greater than  ex) > < >= */

/*2000년 보다 큰 년수를 출력하라*/
select * from books where released_year > 2000; 

select title, released_year from books 
where released_year > 2000 
order by released_year;

select title, released_year from books 
where released_year >= 2000 
order by released_year;

select author_lname from books where author_lname = 'Eggers';

SELECT * FROM books
WHERE pages > 500;

/*less than */

select title, released_year from books 
where released_year < 2000 
order by released_year;

SELECT * FROM books
WHERE released_year <= 1985;
 
/* && AND */
select title, author_lname, released_year from books where author_lname = 'Eggers' and released_year > 2010;
select * from products where brand = 'lego' AND instock = 'true';
select * from books where author_lname='Eggers' and released_year > 2010
AND title LIKE '%NOVEL%';

/* || OR */
select title, author_lname, released_year from books where author_lname = 'Eggers'
or released_year > 2010;

select title, author_lname, released_year, stock_quantity from books where author_lname = 'Eggers'
or released_year > 2010 || stock_quantity > 100 ;

/*  BETWEEN */
select title, released_year from books where released_year between 2004 and 2015;

/* NOT BETWEEN 예) 페이지 수가 100  과 500이 아닌 모든책을 찾고 싶을때 */
select title, released_year from books where released_year not between 2004 and 2015 order by released_year;

/*BETWEEN 날짜나 시간 값과 BETWEEN을 사용 할 때 값을 원하는 자료형으로 변환하기 
위해 CATS()를 사용하십시오.*/

/*IN*/

select title, author_lname from books 
where author_lname = 'Carver' or
	  author_lname = 'Lahiri' or
      author_lname = 'smith';
 select title, author_lname from books 
 where author_lname IN ('Carver', 'Lahiri', 'Smith');
 
 select title, released_year from books 
 where released_year IN (2017, 1985);
      
/* NOT IN*/
select title, released_year from books 
where released_year 
not in (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);  
 
select title, released_year from books
where released_year >= 2000 and released_year % 2 != 0 order by released_year;

 /* CASE */
 select title, released_year,
	case 
		when released_year >= 2000 then 'Modern LIT'
        ELSE '20th Century Lit'
        END AS GENRE
	from books;
    
  select title, stock_quantity,
	case 
		when stock_quantity between 0 and 50 then '*'
        when stock_quantity between 51 and 100 then '**'
        else '***'
	end as STOCK
from books;

select title, stock_quantity,
	case 
		when stock_quantity <= 50 then'*'
        when stock_quantity <= 100 then '**'
        else '***'
	end as STOCK
from books;
 
 SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;

/* 	문제  */
select 10 != 10;
select 15 > 14 && 99 -5 <= 94;
select 1 in (5, 3) || 9 between 8 and 10; 

select title, released_year from books where released_year < 1980;  

select title, author_lname from books 
where author_lname = 'Eggers' or author_lname = 'Chabon'; 

 select title, author_lname from books 
 where author_lname IN ('Eggers', 'Chabon');

select title, author_lname,  released_year from books
where released_year > 2000 && author_lname = 'Lahiri' ;

select title, author_lname, pages from books
where pages between 101 and 199 order by pages;

select title, author_lname from books
where author_lname like 'c%' or
	  author_lname like 's%';
 
 select title, author_lname from books
where substr(author_lname, 1,1) like 'c' or
	  substr(author_lname, 1,1) like 's';
      
 select title, author_lname from books
 where substr(author_lname,1,1) in ('C', 'S');
      

SELECT title, author_lname,
CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'Just Kids' THEN 'Memoir' 
    WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
    ELSE 'Novel'
END AS type
FROM books;

SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;




     

  




