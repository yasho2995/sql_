create database new;

use new;

create function mysum (@x as int , @y as int)
returns int
as 
begin

declare @z as int;
set @z = @x + @y;
return @z;

end 

select dbo.mysum(10,20)

create function multiply (@x as int, @y as int)
returns int
as 
begin 
  declare @z as int;
  set @z = @x * @y;
  return @z;

  end

  select dbo.multiply (10,20);

  create function divide (@x as int , @y as int)
  returns int 
  as 
  begin
     declare @z as int;
	 set @z = @x / @y;
	 return @z;

	 end

	 select dbo.divide(20,10);

create function minius (@x as int , @y as int)
returns int
as 
begin 
  declare @z as int;
  set @z = @x - @y;
  return @z;

  end

  select dbo.minius(10,20);

  create function cal ( @x as int , @y as int , @o as char)
  returns int
  as begin 

  declare @z as int;
  if @o = '+'
  set @z = @x + @y ;
  else if @o = '-'
  set @z = @x - @y;
  else if @o = '*'
  set @z = @x * @y;
  else if @o = '/'
  set @z = @x / @y;
  else if @o = '%'
  set @z = @x % @y;
  else 
  set @z = 0;
  
  return @z;

  end

  select dbo.cal( 10,20, '+');
   select dbo.cal( 10,20, '-');
    select dbo.cal( 10,20, '*');
	 select dbo.cal( 10,20, '/');
	  select dbo.cal( 10,20, '%');



 create function cal2 ( @x as int , @y as int , @o as char)
 returns int
 as begin

 declare @z as int;

 if @o = '+'
 set @z = @x + @y;

 else if @o = '-'
 set @z = @x - @y;

 else if @o = '*'
 set @z = @x * @y;

 else if @o = '/'
 set @z = @x / @y;

 else if @o = '%'
 set @z = @x % @y;

 else 
 set @z = 0;

 return @z;

 end

 select dbo.cal2( 10,20, '+');
   select dbo.cal2( 25,20, '-');
    select dbo.cal2( 46,20, '*');
	 select dbo.cal2( 15,20, '/');
	  select dbo.cal2( 100,20, '%');


	  -- creating function which returns the value like -
	  -- Yashowardhan Mishra E0001
	  -- Ymishra0001@gmail.com


	  create function genmail ( @n as varchar(30) , @i as char(5))
	  returns varchar(100)
	  as begin

	  declare @l as int ;
	  declare @s as int;

	  declare @em as varchar(100);
	  declare @ln as varchar(20);

	  set @l = len(@n);
	  set @s = CHARINDEX(' ', @n);

	  set @ln = right(@n , @l - @s);
	  set @em = concat( left(@n, 1), @ln, right( @i, 4) , '@gmail.com');
	  return upper(@em);

	  end

	  select dbo.genmail( 'yashowardhan mishra' , 'e0001');
	   select dbo.genmail( 'soumya shastri' , 'e0002');


	   -- creating user define function --

	   create function outlook ( @n as varchar(30), @i as char(5))
	   returns varchar(100)

	   as begin
	   declare @l as int;
	   declare @s as int;

	   declare @ln as varchar(20)
	   declare @em as varchar(50)

	  set @l = len(@n);

	  set @s = charindex ( ' ', @n);

	  set @ln = right ( @n , @l - @s);
	   
	   set @em = concat ( left ( @n , 1) , @ln , right( @i , 4) , '@outlook.com');

	   return @em;

	   end

	   select dbo.outlook( 'yashowardhan mishra' , 'e0001');
	   select dbo.outlook ('soumya shastri' , 'e0002');