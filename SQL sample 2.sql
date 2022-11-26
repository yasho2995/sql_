use demo;

create table cj1
(rno int,
Namee varchar (30),
marks int);

insert into cj1 ( rno , namee, marks)
values (1 , 'kapil', 90);

insert into cj1 ( rno , namee, marks)
values (2 , 'rohan', 95);

insert into cj1 ( rno , namee, marks)
values (3 , 'rajat', 86);

insert into cj1 ( rno , namee)
values (4 , 'amit');

insert into cj1 ( rno , namee)
values (5 , 'mohit');



create table cj2
(rno int,
Namee varchar (30),
marks int);


insert into cj2 ( rno , namee, marks)
values (1 , 'kapil', 90);

insert into cj2 ( rno , namee, marks)
values (2 , 'rohan', 95);

insert into cj2 ( rno , namee, marks)
values (3 , 'rajat', 86);

insert into cj2 (marks)
values (79);

insert into cj2 ( marks)
values (68);

select * from cj1;
select * from cj2;

select cj1.rno, cj1.namee , cj2.marks
from cj1
left join cj2
on cj1.rno = cj2.rno
union 
select cj1.rno, cj1.namee , cj2.marks
from cj1
right join cj2
on cj1.rno = cj2.rno;


select cj1.rno, cj1.namee , cj2.marks
from cj1
left join cj2
on cj1.rno = cj2.rno
union all
select cj1.rno, cj1.namee , cj2.marks
from cj1
right join cj2
on cj1.rno = cj2.rno;


select cj1.rno, cj1.namee , cj2.marks
from cj1
left join cj2
on cj1.rno = cj2.rno
intersect
select cj1.rno, cj1.namee , cj2.marks
from cj1
right join cj2
on cj1.rno = cj2.rno;

select cj1.rno, cj1.namee , cj2.marks
from cj1
left join cj2
on cj1.rno = cj2.rno
except
select cj1.rno, cj1.namee , cj2.marks
from cj1
right join cj2
on cj1.rno = cj2.rno;

