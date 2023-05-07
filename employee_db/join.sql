                                                              -- JOIN-- 
                                                              
                                                              
														    -- INNER JOIN--


SELECT department.Dept_id, department.Dept_name, department.Dept_head, employees.Emp_id,employees.Emp_name,employees.Salary
FROM department INNER JOIN employees ON employees.Dept_id=department.Dept_id;

SELECT Emp_id,Emp_name, Dept_id,Dept_name,Salary FROM department INNER JOIN employees using(Dept_id) WHERE (Dept_name='Sales');


SELECT Emp_name, Salary, Dept_name FROM department INNER JOIN employees USING(Dept_id) WHERE (Salary >5000) AND (Salary <20000);

SELECT * FROM employees INNER JOIN department on employees.Dept_id=department.Dept_id;

																-- LEFT JOIN--
                                                           

SELECT * FROM employees LEFT JOIN department on employees.Dept_id=department.Dept_id;

-- for unmatched record
SELECT Emp_id ,Emp_name ,Dept_head FROM department LEFT JOIN employees USING (dept_id ) WHERE Emp_id IS NULL;

															-- RIGHT JOIN--

-- for unmatched record
SELECT Emp_id ,Emp_name ,Dept_head FROM employees RIGHT JOIN department USING (dept_id ) WHERE Emp_id IS NULL;

SELECT * FROM employees RIGHT JOIN department ON department.Dept_id=employees.Dept_id WHERE Salary>5000 AND Salary<50000;

															-- CROSS JOIN--
 SELECT Emp_id ,Emp_name ,Dept_head FROM employees CROSS JOIN department USING (dept_id ) ORDER  BY(Emp_id) DESC ;
 
 
 SELECT Dept_name, count(*) AS 'no. of employee' FROM employees INNER  JOIN department USING (dept_id )   GROUP BY Dept_name;
 