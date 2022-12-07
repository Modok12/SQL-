-- hyphen is used to write a comment in your code
-- Create a table

CREATE TABLE person (
	id INT, Name VARCHAR(100),
	country VARCHAR(100),
	tel_no BIGINT);
	
	DROP TABLE person; -- To delete table
	
	CREATE TABLE person (
	id INT PRIMARY KEY,
		Name VARCHAR(100) UNIQUE,
	country VARCHAR(100)NOT NULL,
		tel_no BIGINT);
	DROP TABLE person;
	
	CREATE TABLE person (
	id INT,
		Name VARCHAR(100) UNIQUE,
	country VARCHAR(100)NOT NULL,
		tel_no BIGINT,
	CONSTRAINT pkey PRIMARY KEY (id)
);

DROP TABLE person;

CREATE TABLE person (
	id INT,
		Name VARCHAR(100) UNIQUE,
	country VARCHAR(100)NOT NULL,
		tel_no BIGINT
);
ALTER TABLE person ADD CONSTRAINT pri PRIMARY KEY(id);

-- using foriegn key

CREATE TABLE student(student_id INT PRIMARY KEY,
	NAME VARCHAR(100) UNIQUE, 
	department VARCHAR(100) NOT NULL,
	department_id INT,
CONSTRAINT fk_key FOREIGN KEY(department_id)
REFERENCES person (id)
);

CREATE TABLE teacher(teacher_id INT PRIMARY KEY,
	NAME VARCHAR(100)UNIQUE,
	department VARCHAR(100) NOT NULL,
	department_id INT,
CONSTRAINT hod FOREIGN KEY (department_id)
 REFERENCES teacher;
					 
DROP TABLE teacher;

CREATE TABLE customer(customer_id VARCHAR(20)PRIMARY KEY,
 CUSTOMER_NAME VARCHAR(20) NOT NULL,
  CUSTOMER_TEL INT);
					 
DROP TABLE customer;

CREATE TABLE product(product_id VARCHAR(20) PRIMARY KEY,
	PRODUCT_NAME VARCHAR(20) NOT NULL,
		price INT);

DROP TABLE product;
					 
CREATE TABLE orders(customer_id VARCHAR(20),
		product_id VARCHAR(20) PRIMARY KEY,
	Quantity INT, 
 Total_amount INT,
CONSTRAINT FK_3 FOREIGN KEY(customer_id)
REFERENCES customer(customer_id),
CONSTRAINT FK_4 FOREIGN KEY(product_id)
REFERENCES product(product_id));
			
DROP TABLE orders;
  SELECT * FROM orders;
					 
CREATE TABLE employee(
epmloyee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
employment_date DATE,
salary INT,
department VARCHAR(100)
);