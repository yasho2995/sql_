use demo;

create procedure dpt
as 
begin
    select *from e2
where dept = 'cs';

end;

execute dpt;
exec dpt;
dpt;

drop procedure dpt;

select * from e1;

create procedure dpt1 ( @x as varchar(20))
as 
begin
   select *from e1
   where city = @x

end;

dpt1 'morena';


create procedure dpt2
as
begin 
     select e1. eid, namee, email, desi, dept
from e1
inner join e2
on e1.eid = e2.eid
where dept = 'cs';

end;

dpt2;

create procedure pro @x as varchar(20)
as
begin
     exec(' select * from ' + @x)

end;

pro 'e1';
pro 'e2';

drop procedure dataload;

create procedure dataload @n as varchar(20), @a as varchar(30), @c as varchar(10), @e as char(5), @em as varchar(30), @s as int, @dp as varchar(10), @de as varchar(10), @pf as int
as 
begin
     set nocount on
     insert into e1
	 values (@n, @a, @c, @e, @em, @s)

	 insert into e2
	 values (@e, @dp, @de, @pf)
	 
end;

dataload 'mahesh','sector 25', 'bhopal', 'e0006', 'mahesh@gmail.com', 150000, 'it', 'dp incharge', 5000;


delete from e1 where eid = 'e0006';



create procedure dataload1 @n as varchar(20), @a as varchar(30), @c as varchar(10), @e as char(5), @em as varchar(30), @s as int, @dp as varchar(10), @de as varchar(10), @pf as int
as 
begin
     set nocount on
     insert into e1
	 values (@n, @a, @c, @e, @em, @s)

	 insert into e2
	 values (@e, @dp, @de, @pf)
	 
	 select * from e1 where eid = @e;
	 select * from e2 where eid = @e;

end;

dataload1 'Raju','sector 11', 'vishakhapatam', 'e0007', 'raju@gmail.com', 250000, 'it', 'incharge', 10000;


create procedure dataload2 @n as varchar(20), @a as varchar(30), @c as varchar(10), @e as char(5), @em as varchar(30), @s as int, @dp as varchar(10), @de as varchar(10), @pf as int
as 
begin
     set nocount on
     insert into e1
	 values (@n, @a, @c, @e, @em, @s)

	 insert into e2
	 values (@e, @dp, @de, @pf)
	 
	 select * from e1 where eid = @e;
	 select * from e2 where eid = @e;

	    select e1. eid, namee, email, desi, dept, sal as 'basic', sal*.15 as 'hra', pf +5000 as 'bonus'
        from e1
        inner join e2
        on e1.eid = e2.eid
end;

dataload2 'hari','sector 5', 'Gandhinagar', 'e0008', 'hari@gmail.com', 20000, 'it', 'incharge', 10000;


create table temp
(id int,
namee varchar(10));

insert into temp values ( 1, 'a');

insert into temp values ( 2 , 'b');

insert into temp values ( 3, 'c');

insert into temp values ( 4, 'd');

insert into temp values ( 5, 'e');

insert into temp values ( 6, 'f');

insert into temp values ( 7, 'g');

insert into temp values ( 8, 'h');

insert into temp values ( 9, 'i');

insert into temp values ( 10, 'j');

insert into temp values ( 11, 'k');

select * from temp;

begin transaction;

delete from temp where id = 11; 
delete from temp where id = 9; 
delete from temp where id = 8; 
delete from temp where id = 7; 
delete from temp where id = 6; 

rollback;

begin transaction;
 
 save transaction t1;
delete from temp where id = 9; 
delete from temp where id = 8; 

save transaction t2;
delete from temp where id = 7; 
delete from temp where id = 6; 

rollback transaction t2;

rollback transaction t1;

commit;

