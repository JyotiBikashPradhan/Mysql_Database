CREATE TABLE department(
DEPT_ID integer primary key AUTO_INCREMENT,
DEPT_NAME varchar(255) NOT NULL,
DEPT_HEAD varchar(255) NOT NULL,
DESCRIPTION varchar(255) DEFAULT NULL,
CREATED_AT timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP

);

INSERT INTO department (DEPT_ID, DEPT_NAME, DEPT_HEAD, description)
VALUES ('01','Marketing', 'John Smith', 'Responsible for promoting the company and its products'),
       ('05', 'Sales', 'Jane Doe', 'Responsible for selling the company\'s products and services'),
       ('15','Human Resources', 'Bob Johnson', 'Responsible for hiring, training, and managing employees'),
       ('19','Engineering', 'Mike Smith', 'Responsible for developing new products and maintaining existing ones'),
       ('20','Finance', 'Mary Johnson', 'Responsible for managing the company\'s financial operations'),
       ('22','IT', 'Tom Williams', 'Responsible for managing the company\'s information technology systems');


ALTER TABLE employee.department 
CHANGE COLUMN DEPT_ID Dept_id INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN DEPT_NAME Dept_name VARCHAR(255) NOT NULL ,
CHANGE COLUMN DEPT_HEAD Dept_head VARCHAR(255) NOT NULL ;
