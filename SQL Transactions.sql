-- Transactions --

create table temp
( id  int ,
name  varchar(10));

insert into temp
values( 1, 'A');

insert into temp
values( 2, 'B');

insert into temp
values( 3, 'C');

insert into temp
values( 4, 'D');

insert into temp
values( 5, 'E');


insert into temp
values( 6, 'F');

insert into temp
values( 7, 'G');

insert into temp
values( 8, 'H');

insert into temp
values( 9, 'I');

insert into temp
values( 10, 'J');


select * from temp;

delete from temp where id = '9';

begin transaction 

delete from temp where id = '8';
delete from temp where id = '7';
delete from temp where id = '6';
delete from temp where id = '5';

select * from temp;

rollback;


select * from emp;

begin transaction 

delete from emp where eid = '1145';
delete from emp where eid = '1146';
delete from emp where eid = '1147';

rollback

begin transaction
save transaction t1;
delete from emp where eid = '1145';

save transaction t2;
delete from emp where eid = '1146';

save transaction t3;
delete from emp where eid = '1147';

save transaction t4;
delete from emp where eid = '1111';

save transaction t5;
delete from emp where eid = '1121';

save transaction t6;
delete from emp where eid = '1122';

save transaction t7;
delete from emp where eid = '1123';

save transaction t8;
delete from emp where eid = '1124';

save transaction t9;
delete from emp where eid = '1125';

save transaction t10;
delete from emp where eid = '1131';


select * from emp;

rollback transaction t10;

rollback transaction t9;

rollback transaction t8;

rollback transaction t7;

rollback transaction t6;

rollback transaction t5;

rollback transaction t4;

rollback transaction t3;

rollback transaction t2;

rollback transaction t1;

select * from emp;