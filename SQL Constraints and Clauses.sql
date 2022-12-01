select * from emp;
select * from emp_sal;

-- Constraint --

-- Not Null constraint --
alter table emp
alter column eid char(04) not null;

-- Default Constraint --
alter table emp
add constraint defcity default 'delhi' for city;

-- Unique Constraint --
alter table emp_sal
add constraint uni unique (eid);

-- Check Constraint --
alter table emp
add constraint chck check ( dob>'1-jan-1980');

-- Primary Key Constraint --
alter table emp
add constraint pkid primary key (eid);


alter table emp_sal
drop constraint uni;

alter table emp_sal 
alter column eid char(04);

-- Foreign Key Constraint --
alter table emp_sal
add constraint fkid foreign key(eid)references emp (eid);




use proto;

select top 3 email from emp;
select top 10 dept from emp_sal;

-- SQL CLAUSES --

-- Where Clause --
select * from emp
where city = 'delhi';

select * from emp
where name = 'david';

-- Like Clause --

select * from emp
where name like 'r%';

select * from emp
where name like '%gupta';

select * from emp
where name like '_____';

select * from emp
where name like '__r%';

select * from emp
where addr2 like '%dwarka%';

-- Top Clause --

select top 10 * from emp;

select top 3 email from emp;

select top 10 addr1 from emp;

select top 20 desi from emp_sal;

select * from emp;

-- Update Clause --

update emp set addr1 = 'sector 20'
where eid = 1001;

update emp set city = 'delhi'
where eid = 1006;


-- Delete Statement --

delete from emp 
where eid = 1145;


delete from emp 
where eid = 1147;


select * from emp;

-- SQL Alter Table Statement --

alter table emp_sal 
add Pf int ;

select * from emp_sal;

alter table emp_sal
alter column pf varchar(10);

alter table emp_sal
add HRA varchar(20);

alter table emp_sal
alter column hra char(10);

-- SQL Drop Table Statement --

alter table emp_sal
drop column pf;

alter table emp_sal 
drop column hra;

select * from emp_sal;


select eid , dept , desi , salary , salary * .15 as 'pf' , salary * .09 as 'hra' from emp_sal;
 

select * from emp_sal;





