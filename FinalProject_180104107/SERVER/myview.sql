set serveroutput on;
set verify off;


create or replace view myview (serial,Brand,Model,Gear,MadeIn,Oil,Condition,Body_Type,EngineCapacity,Kilometer,Price) as
select S.carid, S.Brand, S.Model, S.Transmssn, S.yearOfManu,S.fuel, S.Condition,S.Body_,S.Engine_Cap,S.Kilo_Run,S.price
from car S;

select * from myview;