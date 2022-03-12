set serveroutput on;
set verify off;
set linesize 200;

drop table car;
CREATE TABLE CAR (
	carid int,
    Brand VARCHAR2(10),
    Model VARCHAR2(10),
	Transmssn VARCHAR2(10),
	yearOfManu VARCHAR2(5),
    fuel VARCHAR2(8),
    Condition VARCHAR2(5),
    Body_ VARCHAR2(5),
    Engine_Cap VARCHAR2(8),
    Kilo_Run VARCHAR2(10),
    price VARCHAR2(15),	
	PRIMARY KEY(carid)); 
	
CREATE OR REPLACE TRIGGER Test
AFTER INSERT
ON CAR

DECLARE
BEGIN
    
	DBMS_OUTPUT.PUT_LINE('A New car was added to the lot!!!');

END;
/	
	
CREATE OR REPLACE TRIGGER Test3
AFTER DELETE
ON CAR

DECLARE
BEGIN
    
	DBMS_OUTPUT.PUT_LINE('A Car Was Removed from the lot');

END;
/	

CREATE OR REPLACE TRIGGER Test7
AFTER UPDATE
ON CAR

DECLARE
BEGIN
    
	DBMS_OUTPUT.PUT_LINE('Car Data has been Modified');

END;
/		



	
	I

	
	
  