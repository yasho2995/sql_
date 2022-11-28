create database proto;

use proto;

use proto; 

select * from emp;

select * from emp_sal;

-- Joins --

select * from emp;
select * from emp_sal;

--Inner Join--

select emp.eid , emp.city, emp.phone, emp.doj , emp_sal.eid , emp_sal.dept , emp_sal.desi, emp_sal.salary
from emp
inner join emp_sal
on emp.eid = emp_sal.eid;

select e1.eid , e1.city , e1.phone, e1.doj, e2.eid, e2.dept, e2.desi, e2.salary
from emp e1
inner join emp_sal e2
on e1.eid = e2.eid;


select emp.eid, city , phone , doj, dept , desi, salary
from emp
inner join emp_sal
on emp.eid = emp_sal.eid;


--Left Join--

select emp.eid , emp.city, emp.phone , emp.dob, emp_sal.dept , emp_sal.desi, emp_sal.salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid;




select e1.eid , e1.city, e1.phone, e1.dob, e2.eid, e2.dept, e2.desi, e2.salary
from emp e1
left join emp_sal e2
on e1.eid = e2.eid;


select emp.eid , city , phone, dob, dept, desi, salary
from emp
left join emp_sal
on emp.eid = emp_sal.eid;

-- Right Join --


select emp.eid , emp.city, emp.addr1, emp.addr2, emp_sal.dept, emp_sal.desi, emp_sal.salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;

select e1.eid, e1.city, e1.addr1, e1.addr2, e2.dept, e2.desi, e2.salary
from emp e1
right join emp_sal e2
on e1.eid = e2.eid;

select emp.eid, city, addr1, addr2, dept, desi, salary
from emp
right join emp_sal
on emp.eid = emp_sal.eid;


-- Full Join --

select emp.eid , emp.city , emp.phone, emp.doj, emp.dob , emp_sal.dept, emp_sal.desi, emp_sal.salary
from emp
full join emp_sal
on emp.eid = emp_sal.eid;

select e1.eid , e1.city, e1.phone , e1.doj, e1.dob, e2.dept, e2.desi, e2.salary
from emp e1
full join emp_sal e2
on e1.eid = e2.eid;

select emp.eid , city, phone , doj , dob , dept , desi , salary
from emp
full join emp_sal
on emp.eid = emp_sal.eid;

select e1.eid , city , phone , doj, dob , dept , desi , salary
from emp e1
full join emp_sal e2
on e1.eid = e2.eid;

