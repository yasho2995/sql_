use proto;

select * from emp
where city = 'delhi';

-- Stored Procedure --

create procedure delhi
as begin
   select * from emp
   where city = 'delhi';

   end;
   
   execute delhi;
   exec delhi;
   delhi;

   drop procedure delhi;

   -- Procedure with defining variables --

   create procedure city @x as varchar(20)
   as begin 
      select * from emp
	  where city = @x;

	  end;

	  city 'delhi';
	  city 'mumbai';
	

	select emp.eid, name, city, doj, dob , dept, desi , salary as 'basic', salary * .15 as 'hra' , salary * .9 as 'PF'
	from emp
	inner join emp_sal
	on emp.eid = emp_sal.eid
	where dept = 'ops';

	create procedure dept @x as varchar(20)
	as begin
	   select emp.eid , name, city, doj, dob , dept , desi, salary as 'Basic' , salary * .15 as 'HRA', salary * .09 as 'PF'
	   from emp
	   inner join emp_sal
	   on emp.eid = emp_sal.eid
	   where dept = @x ;

	   end;

	   dept 'mis';
	   dept 'ops';


	   create procedure sel @n as varchar(20)
	   as begin
	      execute ( 'select * from ' + @n);

		  end;


		  sel 'emp';
		  sel 'emp_sal';

-- value insertion through procedures --

insert into emp
values ( 1129, 'Abhinav Singh' , 'sector 8' , 'rohini', 'delhi' , '9111422356', 'As@gmail.com', '1-oct-1999', '15-july-2012'); 

create procedure insertion @i as int , @n as varchar(20), @a1 as varchar(25), @a2 as varchar(20), @c as varchar(10), @ph as char(10) , @em as varchar(20), @db as date, @dj as date
as begin 
   insert into emp
   values ( @i, @n, @a1, @a2, @c, @ph, @em, @db, @dj);

   select * from emp where eid = @i;

   end;

   insertion 1130, 'Gokul Singh', 'sector 24', 'niwas', 'Indore', '9856425745', 'gs@gmail.com', '5-oct-1994', '15-july-2011';
   insertion 1145, 'Kalyaan Gupty', 'sector 45', 'shreedham', 'bhopal', '9658745124', 'kg@gmail.com', '5-oct-1995', '15-june-2012';

   create procedure insertion2 @i as int, @n as varchar(20), @a1 as varchar(20), @a2 as varchar(15), @c as varchar(10) , @ph as char(10), @em as varchar(20), @db as date, @dj as date, @dp as varchar(10) , @ds as varchar(10) , @s as int 
   as begin 
     
	 set nocount on;
	 insert into emp
	 values (@i, @n, @a1, @a2 , @c, @ph, @em, @db , @dj);

	 insert into emp_sal
	 values (@i , @dp, @ds, @s);

	 select * from emp where eid = @i;
	 select * from emp_sal where eid = @i;

	 select emp.eid , name, phone, email, dept , desi , salary as 'Basic', salary * .15 as 'HRA', salary * .09 as 'PF'
	 from emp
	 inner join emp_sal
	 on emp.eid = emp_sal.eid
	 where emp.eid = @i;

	 end;

	insertion2 1146, 'Jagat Singh', 'Vijay nagar', 'Deendayal', 'Jabalpur', '9586471245', 'js@gmail.com', '15-sep-1996', '14-july-2012', 'mis', 'manager', 120000;
	insertion2 1147 , 'Manoj Goswami', 'Madan Mahal', 'Ranitaal', 'Jabalpur', '9685475124', 'mg@gmail.com', '15-nov-1993', '16-june-2011', 'ops', 'A. Director', 220000;


	 delete from emp where eid = 1146;
	 delete from emp_sal where eid = 1146;

	 sel emp_sal;

	 drop procedure insertion2;

