use demo;

select eid, addr, namee, city from emp;
select * from emp;

select* from emp
where city = 'Morena';

select * from emp
where namee = 'Gopal';

select * from emp
where city like 'J%';

select * from emp
where addr like '%24';

select * from emp
where city like '%al%';


select * from emp
where namee like '_____';


select * from emp
where namee like '__n%';



select top 3 namee from emp;
select top 5* from emp;

select * from emp;

update emp set city = 'Jamshedpur'
where eid = 'e0002';

update emp set city = 'Jabalpur'
where eid = 'e0004';


update emp set city = 'Bhitoni'
where eid = 'e0009';

update emp set city = 'kachpura'
where eid = 'e0010';

delete from emp
where eid = 'e0001';

select * from emp;

delete from emp
where eid = 'e0010';


delete emp;

alter table emp
add class char(4);

alter table emp
add pincode int;

update emp set class = '7th';

alter table emp
drop column class;

alter table emp 
drop column pincode;

insert into emp
values ( 'e0001', 'vijay', 'sector 24', 'Morena', '12-02-1889', 'vijay@gmail.com')

insert into emp
values ( 'e0002', 'aijay', 'sector 85', 'Gaziabad', '04-02-1889', 'aj@gmail.com')


select * from emp;

select * from emp where eid = 'e0001';

truncate table emp;

select 5/2, 5%2, 5+2, 5-2;

select * from emp
where addr <> 'Morena';

alter table emp
add sal int;

update emp set sal = 10000;

update emp set sal = 20000
where city = 'Gaziabad';

alter table emp
add pf int;

update emp set pf = 10000
where city = 'Morena';

update emp set pf = 20000
where city = 'Gaziabad';

select *from emp;

select* from emp
where pf > 10000;

select* from emp
where sal != 10000;

select* from emp
where sal = 10000 and namee = 'vijay';

select* from emp
where sal = 10000 or namee = 'ajay';

select* from emp
where not sal = 10000;

select * from emp 
where sal between 5000 and 15000;


insert into emp
values ('e0003','pradarsh', 'sector 63', 'kolkata', '12-01-1989', 'pr@gmail.com', 30000, 15000);

insert into emp
values ('e0004','kamlesh', 'sector 41', 'Bhitony', '12-01-1989', 'km@gmail.com', 30000, 15000);

select *from emp;

select * from emp 
where city in ('Morena', 'Gaziabad', 'kolkata');

select * from emp
where sal is null;

select distinct city from emp;