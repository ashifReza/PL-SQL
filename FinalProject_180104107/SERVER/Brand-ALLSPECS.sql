
drop package mycar2;
drop package body mycar2;


set serveroutput on;
set verify off;


create or replace package mycar2 as
	procedure ModSearch (y2 in out car.Brand@site1%type, a1 in out car.Model@site1%type ,c1 in out car.price@site1%type,d1 in out car.Transmssn@site1%type,b1 in out car.yearOfManu@site1%type,e1 in out car.fuel@site1%type,f1 in out car.Condition@site1%type,g1 in out car.Engine_Cap@site1%type,h1 in out car.Kilo_Run@site1%type,j1 in out car.Body_@site1%type);
end mycar2;
/

create or replace package body mycar2 as 
	procedure ModSearch (y2 in out car.Brand@site1%type, a1 in out car.Model@site1%type, c1 in out car.price@site1%type,d1 in out car.Transmssn@site1%type,b1 in out car.yearOfManu@site1%type,e1 in out car.fuel@site1%type,f1 in out car.Condition@site1%type,g1 in out car.Engine_Cap@site1%type,h1 in out car.Kilo_Run@site1%type,j1 in out car.Body_@site1%type)
	is
	begin
	for i in(select * from car@site1)loop
		if i.Brand = y2 then
			a1 := i.Model;
			c1 := i.price;
			d1 := i.Transmssn;
			b1 := i.yearOfManu;
			e1 := i.fuel;
			f1 := i.Condition;
			g1 := i.Engine_Cap;
			h1 := i.Kilo_Run;
			j1 := i.Body_;
			DBMS_OUTPUT.PUT_LINE( chr(10) ||'1.Model Name----' || UPPER(a1) || chr(10) || '2.Body----'|| j1 || chr(10)|| '3.Transmission----' || d1 || chr(10)|| '4.Manufacture Date----' || b1 || chr(10) || '5.Fuel Type----' || e1 || chr(10)|| '6.Condition----' || f1 || chr(10)|| '7.Engine Capacity----' || g1 || chr(10)|| '8.Kilometers----' || h1 || chr(10)|| '9.price----' || c1 || chr(10) );
		end if;
	end loop;
	end ModSearch;
end mycar2;
/

accept X char prompt "Enter Brand Name to display every model: "

Declare
y car.Brand@site1%type;
a car.Model@site1%type;
c car.price@site1%type;
d car.Transmssn@site1%type; 
b car.yearOfManu@site1%type;
e car.fuel@site1%type;
f car.Condition@site1%type;
g car.Engine_Cap@site1%type;
h car.Kilo_Run@site1%type;
j car.Body_@site1%type;

begin
	y := '&X';
	mycar2.ModSearch(y,a,c,d,b,e,f,g,h,j);
end;
/