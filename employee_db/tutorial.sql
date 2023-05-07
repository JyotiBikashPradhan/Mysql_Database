CREATE SCHEMA school;
create schema surya;
-- surya katigala
drop schema school;

use school;
												-- data definition language(ddl)--
															-- create
															-- alter
															-- drop
															-- truncate 

create table student(id integer not null primary key, name varchar(200) default null, address varchar(255),phoneno integer );
create table teacher(id integer not null primary key, name varchar(200) default null, address varchar(255),phoneno integer );


alter table student add age integer; -- add column 
alter table student modify id varchar(8);  -- modify datatype
alter table student drop age;  -- delete column name
alter table student change column id stud_id varchar(20); -- change column name
alter table  student rename stud; -- change table name
rename table stud to student;

drop table teacher;-- delete table
truncate table teacher; -- delete table content



												-- data manipulation language-- 
													-- insert
													-- update
													-- delete
                                                    
insert into student values(2, "priya","cuttack","52845155");
insert into student values(3, "panda","kendrapada","52845155");
insert into student values(4, "soura","delhi","52845155");
insert into student values(5, "mitesh","bhanjanagar","528451556",40);
insert into teacher values(5, "mitesh","bhanjanagar","528451556");

update student set address="bbsr" where (stud_id='1'); -- update content of table
update student set phoneno="156164654" where (stud_id='5');

delete from student where (stud_id='5'); -- delete particular row
delete from student where (stud_id='1');

														-- data query language--
																-- select 
                                                                
                                                                
select * from student;
select * from teacher;

select stud_id ,name, phoneno from student where phoneno=52845155;

select stud_id ,name, age from student where age<>45;

select stud_id ,name, age from student where age between 15 and 40 ;

select stud_id ,name, address from student where address in ('kendrapada','delhi');

select name, age as "min age" from student where age=(select max(age )  from student);

select name ,age,stud_id from student order by age desc ;

-- group by used with aggregated function SUM, COUNT, MIN, MAX, or AVG -- 

select address ,count(*) from student group by address;

-- find nth highest age from student

SELECT name, age AS maxage FROM student WHERE age =(SELECT MAX(age) FROM student WHERE age < 
    (SELECT MAX(age) FROM student WHERE age < 
           (SELECT MAX(age)FROM student))) ;


select distinct(age), name from student order by age desc limit 0,1;

-- dense_rank()

select name , age ,dense_rank() over (order by age desc) as age_rank from student ;
select * from (select name , age ,dense_rank() over (order by age desc) as age_rank from student) as n where age_rank=4;