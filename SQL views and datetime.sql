use demo;
select *from e1;
select *from e2;
  
create view v1
as
select *from e1
where city = 'noida'
with check option;

select *from v1;

create view v2
as 
select cj1.rno, cj1.namee , cj2.marks
from cj1
left join cj2
on cj1.rno = cj2.rno
union 
select cj1.rno, cj1.namee , cj2.marks
from cj1
right join cj2
on cj1.rno = cj2.rno;

select *from v2;
insert into e1
values ( 'vishwas', 'sector 456', 'noida', 'e0005','viswas@gmail.com', 52000)

delete from e1 
where eid = 'e0005';

select *from v1;

create view v3
as 
   select eid , email, sal from e1;

   select *from v3;

select distinct email from e1
where eid = 'e0001';

select sum (sal) from e1;
select min(sal), max(sal), avg(sal) from e1;

drop view v3; 

create view v4 
as
 select *from e1;

 select *from v4
 order by sal desc;

 select *from e1;

create view v6
as
 select city, sum(sal) as 'tc' from e1
 group by city
 having sum(sal)<80000;

 select *from v6
 order by tc desc;

 select count(*) from e1;
 select sqrt(49);

 select rand();

 select concat('hello','world');
 select ascii('Y'),char(89);

 select charindex('y', 'yasho');

select left('yasho', 3);
select right ('yasho',3);
select len('yashowardhan mishra');
select lower('YASHO');
select upper ('yasho');

select substring ('yashowardhan',5,3);

select replace('yasho', 'y','sy');
select reverse('yasho');

select stuff('yashowardhan', 3 , 5, 'xyz');

select *from e1;

select eid , namee, concat(city,addr) as 'address', left(namee, 1) as 'initial', charindex(' ',namee) as 's',
left (namee, charindex(' ', namee)) as 'fname', len(namee) as 'l',
concat(left(namee, 1),right(eid,4),'@outlook.com') as 'company mail' from e1;


select getdate();

select dateadd(d, 10, getdate()), DATEADD(m, 5, getdate()), dateadd(YY,2, getdate());

select *from e1;
select day(getdate()) as 'day';
select month(getdate()) as 'month';
select year(getdate()) as 'year';

select datepart(d, getdate()), datepart(m, getdate()), datepart(yy, getdate());

select convert(varchar(20), getdate());
select convert(varchar(20), getdate(),10);
select convert(varchar(20), getdate(),110);

select format(getdate(), 'D'), format(getdate(), 'm'), format(getdate(), 'y');

