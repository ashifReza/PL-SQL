set serveroutput on;
set verify off;
set linesize 200;


drop table interest;
CREATE TABLE interest( 
     intid int,
	 carid int,
	 mobile VARCHAR2(10),
	 PRIMARY KEY(intid),
	 FOREIGN KEY(carid) REFERENCES car (carid));
	 
	
   insert into interest(intid,carid,mobile) Values (1,3,'0173345678');
   insert into interest(intid,carid,mobile) Values (2,2,'0173345678');
   insert into interest(intid,carid,mobile) Values (3,5,'0173345678');
   insert into interest(intid,carid,mobile) Values (4,7,'0173345678');
   insert into interest(intid,carid,mobile) Values (5,9,'0173345678');
   insert into interest(intid,carid,mobile) Values (6,8,'0173345678');
   insert into interest(intid,carid,mobile) Values (7,4,'0173345678');
   
   