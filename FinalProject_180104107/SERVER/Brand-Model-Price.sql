
drop package mycar;
drop package body mycar;


set serveroutput on;
set verify off;


create or replace package mycar as
	procedure ModSearch (y2 in out car.Brand@site1%type, a1 in out car.Model@site1%type ,c1 in out car.price@site1%type);
end mycar;
/

create or replace package body mycar as 
	procedure ModSearch (y2 in out car.Brand@site1%type, a1 in out car.Model@site1%type, c1 in out car.price@site1%type)
	is
	begin
	for i in(select * from car@site1)loop
		if i.Brand = y2 then
			a1 := i.Model;
			c1 := i.price;
			DBMS_OUTPUT.PUT_LINE('Model Name:' || UPPER(a1) || ' ' || 'Price:'|| c1);
		end if;
	end loop;
	EXCEPTION
	 WHEN NO_DATA_FOUND THEN
	  DBMS_OUTPUT.PUT_LINE('No Data was Found');
	end ModSearch;
end mycar;
/

accept X char prompt "Enter Brand Name to display every model: "

Declare
y car.Brand@site1%type;
a car.Model@site1%type;
c car.price@site1%type; 
ashif EXCEPTION;
b number;

begin
	b := 0;
	y := '&X';
	
	mycar.ModSearch(y,a,c);
	
	IF y = NULL THEN
	  RAISE ashif;
	END IF;  
    
	EXCEPTION
    WHEN ashif THEN
      DBMS_OUTPUT.PUT_LINE('Please input a character');	
end;
/






