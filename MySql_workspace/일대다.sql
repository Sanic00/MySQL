
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);       
       
 select * from customers where last_name='George'; 
 select * from orders where customer_id = 1;
  
  select * from orders where customer_id =
  (
	select id from customers
    where last_name='George'
  );
   select * from orders;
  /*JOIN이란 두 테이블을 취하고, 우리는 몇가지 다른 구성으로 테이블 결합 할 수 있다.*/
  /*  To perform a (kind of useless) cross join:
SELECT * FROM customers, orders;*/


  /*INNER JOIN이란 두 테이블에서 겹치는 부분 교집합 같은느낌.*/
SELECT * FROM customers, orders where customers.id = orders.customer_id;

select first_name, last_name, order_date, amount 
	FROM customers, orders
		where customers.id = orders.customer_id;
  
/*
EXPLICIT INNER JOIN 명시적 이너조인
결합을 할 때 암시적 조인을 하지마라 명시적으로 해라 
*/  
select * from first_name, last_name, order_date, amount 
	inner join orders 
    on customers.id = orders.customer_id;
 
 /*ARBITRARY JOIN - DON`t do this*/
SELECT * FROM orders
JOIN customers ON customers.id = orders.customer_id;

/*
LEFT JOIN
 */
select first_name, last_name, order_date, amount as total_spent from  customers
	join orders 
    on customers.id = orders.customer_id
    order by amount;
    
 select first_name, last_name, order_date, amount as total_spent from  customers
	join orders 
		on customers.id = orders.customer_id
    group by orders.customer_id;
    
select * from customers
	left join orders 
    on customers.id = orders.customer_id;    
/*컬럼 안에 있는 null값을 함수를 이용해서 0으로 바꿈*/
select first_name, last_name,
ifnull(sum(amount),0)
from customers
left join orders
	 on customers.id = orders.customer_id;
     
 /*
Right JOIN
 */    
select * from customers 
right join orders
on customers.id = orders.customer_id;