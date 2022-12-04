use proto;
select * from emp;
select * from emp_sal;

-- Union Clause --

select distinct city from emp;


select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid

union

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;


-- Union all Clause --

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid

union all

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;

--Intersect--

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid

intersect

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;


-- except ==

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid

except

select emp.eid, addr1, addr2, city , desi, dept, salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;


--Indexes--

select * from emp;

create index ind1 on emp (city);

select * from emp where city = 'delhi';

-- Composite Index --

create index ind2 on emp(city, addr1 , email);
select * from emp where city = 'delhi';

--There is also one term called clustered index 
-- The syntax is " create clustered index <<index name>> on <<table name>> <<column>> ";

drop index ind1 on emp;
drop index ind2 on emp;


-- SQL Views --

create view city1
as
select * from emp
where city = 'delhi';

select * from city1;

create view email1
as
   select email from emp;

   select * from email1;

create view dept1
as
 select * from emp_sal
 where dept = 'mis'
 with check option;

 select * from dept1;

 create view tab1
 as
 select eid , name , city, email, doj
 from emp;

 select * from tab1;
   
   create view injo
   as

   select emp.eid, name , email , addr1, doj, desi, dept, salary
   from emp
   inner join emp_sal
   on emp.eid = emp_sal.eid;

   select * from injo;

   select distinct city from emp;

   create view sal1
   as
   select * from emp_sal;

   select * from sal1
   order by salary;
  
  -- After creating view we can have "order by" --

-- SQL "Having Clause" and "Group by"--

select dept, sum(salary) as 'Total Cost' from emp_sal
group by dept;

select dept, sum(salary) as 'Total Cost' from emp_sal
group by dept
having sum(salary) > 900000;

select dept, sum(salary) as 'Total Cost' from emp_sal
group by dept
having sum(salary) > 900000
order by sum(salary) desc;


-- SQL Functions --
use proto;

select sum(salary) as 'TC', max(salary) as 'Maximum salary', min(salary) as 'Minimum salary', avg(salary) as 'Avg salary'
from emp_sal;

select sqrt(2985);
select rand();

select concat('The Table has', ' all required information');
 
select ascii('y'), char(121);

select CHARINDEX('w', 'yashowardhan mishra'); -- Starting from 1--

select left('yashowardhan mishra', 8), right('yashowardhan mishra', 8); --space is countable == 

select len('yashowardhan mishra');

select lower('YASHOWARDHAN MISHRA'), upper('the table has all required information');

select SUBSTRING('Dataset manipulation', 7 , 6);
select reverse('Programming has finished');
select replace('Programming has finished' , 'programming', 'Project');
select stuff( 'Compiler has getting the job done', 26, 3, 'task');


select eid, name, concat(addr1, ' ', addr2, ' ', city) as 'Address', 
left(name, 1) as 'Initial', CHARINDEX(' ', name) as 's',
left(name, charindex(' ', name)) as 'Fname',
upper(right(name ,len(name)- charindex(' ', name))) as 'Lname',
concat(left(name,1),right(name, len(name)-charindex(' ', name))) as 'SName',
concat(left(name,1), right(name, len(name)-charindex(' ', name)), right(eid, 3) , '@gmail.com') as 'Email'
from emp;





