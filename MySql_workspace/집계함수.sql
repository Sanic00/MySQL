/*집계함수*/
/*COUNT */

select count(*) from books;
select count(author_fname) from books;
select count(distinct author_fname) from books;
select count(*) from books where title like '%the%' ;

/* GROUP BY
 GROUP BY 절은 특정 칼럼을 기준으로 집계 함수를 사용하여 건수(COUNT), 합계(SUM), 평균(AVG) 등 집 계성 데이터를 추출할 때 사용한다. 
 GROUP BY 절에서 기준 칼럼을 여러 개 지정할 수 있으며, HAVING 절을 함께 사용하면 집계 함수를 사용하여 WHERE 절의 조건절처럼 조건을 부여할 수 있다. 
 GROUP BY 절은 중복제거를 할 때도 사용 가능하다. 
 SQL Server에서는 GROUP BY 절을 사용할 경우 그룹 칼럼을 기준으로 자동으로 ORDER BY가 되지만 명시적으로 ORDER BY를 사용하여 쿼리문을 작성하는 것이 좋다.
*/
select author_lname, count(*) from books group by author_lname;

SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

/*MIN MAX*/
select min(released_year) from books;
select min(pages) from books;
select max(released_year) from books;
select max(pages) from books;
select max(pages), title from books;
select * from books where pages = 634;
select title, pages from books where pages=(select max(pages) from books);
select * from books order by pages asc limit 1;

/* ()안에있는 셀렉트문이 먼저 실행됨*/
select * from books where pages = (select min(pages) from books);

select min(released_year) from books;

select author_fname, author_lname, min(released_year) from books
group by author_lname, author_fname;

select max(pages) from books group by author_lname, author_fname;

SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;

SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

select concat(author_fname, ' ', author_lname) as author, max(pages) as 'longest book'
from books group by author_lname, author_fname;  

/* SUM */
select sum(pages) from books;
select sum(released_year) from books;
SELECT 
	author_lname, author_fname, sum(pages)
    from books group by  author_lname, author_fname;
    
/* AVG */
select avg(released_year) from books;
select author_fname, author_lname , avg(pages) from books
group by  author_lname, author_fname;

SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;

/* 문제 */
select * from books;

select count(*) from books group by released_year;
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;

SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;

select author_fname, author_lname, count(released_year) from books group by  author_lname, author_fname;

select sum(stock_quantity) from books;
select author_fname, author_lname , avg(released_year) from books group by  author_lname, author_fname;

select concat(author_fname, ' ' ,author_lname)as author, max(pages)as pages 
from books group by author_fname, author_lname, pages; 

SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;

select released_year as year ,count(released_year) as books, avg(pages) as 'avg pages'  
from books group by released_year ORDER BY released_year; 










show errors;