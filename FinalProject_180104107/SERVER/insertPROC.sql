drop package mycar3;
drop package body mycar3;


set serveroutput on;
set verify off;


create or replace package mycar3 as
	procedure ModSearch1 (y2 in out interest.mobile@site1%type,c1 in out interest.carid@site1%type);
end mycar3;
/

create or replace package body mycar3 as 
	procedure ModSearch1 (y2 in out interest.mobile@site1%type,c1 in out interest.carid@site1%type)
	is
	begin
	for i in(select * from interest@site1)loop
		if i.mobile = y2 then
		   c1 := i.carid;
			DBMS_OUTPUT.PUT_LINE('You have selected car number' || ' ' || c1 || ' ' || 'please check car list for any cars' );
		ELSE
            DBMS_OUTPUT.PUT_LINE('You have not selected yet');		
		end if;
	end loop;
	
	end ModSearch1;
end mycar3;
/

accept X char prompt "Enter Brand Name to display every model: "

Declare
y interest.mobile@site1%type;
c interest.carid@site1%type;

begin
	
	y := '&X';
    mycar3.ModSearch1(y,c);

end;
/



