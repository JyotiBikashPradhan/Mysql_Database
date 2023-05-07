CREATE SCHEMA employee;
USE employee;

CREATE TABLE IF NOT EXISTS employees ( 
EMPLOYEE_ID integer NOT NULL PRIMARY KEY, 
Emp_NAME varchar(20) DEFAULT NULL, 
Address varchar(255) DEFAULT NULL,
EMAIL varchar(255) NOT NULL, 
PHONE_NUMBER varchar(20) DEFAULT NULL, 
HIRE_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
SALARY decimal(8,2) DEFAULT NULL, 
MANAGER_ID decimal(6,0) DEFAULT NULL, 
DEPARTMENT_ID decimal(4,0) DEFAULT NULL);

INSERT INTO employees VALUES ('7369','Rohit Sharma','hydrabad','rohit@gmail.com','8093159825','1980-12-17','05','20000','790','20');
INSERT INTO employees VALUES ('7367','Virta raina','chennai','raina@gmail.com','938241552','2000-01-20','18','20000','200','19');
INSERT INTO employees VALUES ('7380','Dinesh singh','chennai','singh@gmail.com','8249425641','2002-04-20','15','10000','210','19');
INSERT INTO employees VALUES ('7370','Rashmi das','kendrapada','das@gmail.com','9999444422','2021-04-20','15','5000','0','0');
INSERT INTO employees VALUES ('7377','Soursv Rout','kendrapada','rani@gmail.com','25456554654','2022-04-10','17','6000','02','05');
INSERT INTO employees VALUES ('7378','Anupama Mitesh ','bhanjanagr','pama@gmail.com','252525','2022-04-10','17','70000','0','15'),
('7379','Kamal Laksh ','chennai','gai@gmail.com','2525252525','2022-04-10','18','15000','05','05');


ALTER TABLE employees ADD AGE integer DEFAULT NULL;


-- ALTER TABLE employees DROP age

ALTER TABLE employees add AGE integer NOT NULL AFTER Address;

ALTER TABLE  employees CHANGE COLUMN EMPLOYEE_ID Emp_id varchar(20) NOT NULL; 

ALTER TABLE employees MODIFY COLUMN Emp_id integer;


RENAME TABLE customer TO employees; 



SELECT * FROM employees
WHERE SALARY>10000;

-- SELECT * FROM employees WHERE salary BETWEEN 10000 AND 50000

SELECT * FROM employees
WHERE address IN ('chennai','hydrabad');

-- ALTER TABLE employees CHANGE COLUMN Emp_NAME Emp_name varchar(20) default null

SELECT * FROM employees
ORDER BY Address ASC, emp_name DESC;


UPDATE employees SET EMAIL = 'surya@gmail.com' WHERE (Emp_id = '7379');

														-- GROUP BY--  
                                                        
   -- GROUP BY with COUNT --                                                         
SELECT Address, COUNT(*)  
FROM   employees  
GROUP BY Address;  

-- GROUP BY with SUM -- 

SELECT Dept_name, SUM(Salary) AS "salary"  
FROM employees inner join department using (Dept_id) group by Dept_name ;

select Emp_name, Salary from employees;


-- GROUP BY with max AND MIN-- 

SELECT  MAX(Salary) FROM  employees  ; 
select Emp_name,salary from employees where salary=(select Max(salary) from employees);-- person who is getting highest salary-- 

select Emp_name,salary from employees where salary=(select Min(salary) from employees);-- person who is getting lowest salary-- 

SELECT  Emp_name ,MIN(Salary) FROM  employees  ;










