-- Data Manipulation Language(DML)

SELECT * FROM customer;
-- To insert records
INSERT INTO customer(customer_id,
					customer_name,
					customer_tel
					)
					VALUES
					('2435','Thomas',0804),
					('6532','Babatunde',0903),
					('1813','Elizabeth',0803);
SELECT * FROM customer;

SELECT * FROM product;

INSERT INTO product(product_id,
				   product_name,
				   price)
				   VALUES
				   ('123','PS4',300),
				   ('456','Iphone',700),
				   ('789','Generatore',1000),
				   ('987','Laptop',2000);
SELECT * FROM product;

SELECT * FROM orders;

INSERT INTO orders(customer_id,
				  product_id,
				  quantity,
				  total_amount)
				  VALUES
				  ('2435','123',5,600),
				  ('6532','456',10,7000),
				  ('1813','987',2,4000);
SELECT * FROM orders;

SELECT * FROM employee;

CREATE TABLE employee(
epmloyee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
employment_date DATE,
salary INT,
department VARCHAR(100)
);
INSERT INTO employee(epmloyee_id,
					employee_name,
					employment_date,
					salary,
					department)
					VALUES
					('123','Thomas','2022-02-12','5000','HR'),
					('456','Cenolyn','2022-01-18','7000','Health'),
					('789','Jemi','2022-03-01','3000','Law'),
					('901','Maji','2022-04-22','4000','sport');
SELECT * FROM employee;
SELECT * FROM employee ORDER by salary DESC;
-- GROUP BY
INSERT INTO employee(epmloyee_id,
					employee_name,
					employment_date,
					salary,
					department)
					VALUES
					('321','Thomas','2021-03-22','10000','SEX ED');
SELECT * FROM employee;
SELECT * FROM employee GROUP BY epmloyee_id;