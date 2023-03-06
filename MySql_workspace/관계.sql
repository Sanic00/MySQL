/*
일대일 관계 

일대다 관계
 
다대다 관계

ON DELETE CASCADE
상위 데이터를 삭제할때 필요함 이것을 설정안하면 테이블 내에서 필드를 삭제할수가 
없음 기본키를 참조하고 있기 때문에 삭제가 안됨 
*/

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

create table papers (
	title varchar(50),
    grade int, 
    student_id int, 
    foreign key(student_id)
    references students(id)
    on delete cascade
);

create table customers(
	id INT auto_increment primary key,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100)
);

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;
    
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

create table papers (
	title varchar(50),
    grade int, 
    student_id int, 
    foreign key(student_id)
    references students(id)
);

select first_name, title, grade from students 
JOIN papers ON papers.student_id = students.id order by grade desc;

SELECT 
    first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id;
    
    SELECT 
    first_name, IFNULL(AVG(grade), 0) AS average
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;
 
 
 
SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
    END AS passing_status
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;
 
    
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);