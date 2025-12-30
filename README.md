# mysql-task-on-ddl-commands-
Sql task ===================== 1.remove column from a table 2.change the datatype of any column 3.remove the data from a table 4.remove the table from database 5.remove the database

create database bhavana; ## ctreating the database
use bhavana; # using that database
# creation of table
create table details(
sno int,
rollno bigint,
marks float,
percentage double,
age decimal(2,2),
surname varchar(2),
name char(10),
fullname text,
dob date,
brith time,
passout datetime);

desc details; # properties of tables
show tables; # show the tables list
select* from details; # table data box
# single insertion
insert  into details  values (3,401,85,85,24,'t','bhavana','tbhavana','2004-11-26','05:30:00','2004-11-26 05:30:00');

# Error Code: 1264. Out of range value for column 'age' at row 1
alter table details modify column age decimal(4,1);
# multiple insertion
insert into details values(1,410,88,83,23,'g','khushi','gkhushi','2004-12-26','10:30:00','2004-02-26 05:30:00'),
                          (2,410,88,88,23,'g','khushi','gkhushi','2004-12-26','10:30:00','2004-02-26 05:30:00');
# update command
set sql_safe_updates=0;
update details set marks = 78 where marks =88;
update details set sno = 10, rollno = 424 , marks =6 where sno = 1;
#delete command
set autocommit = 0;
delete from details where sno =1;
rollback;
delete from details where sno is null;
delete from details;

# adding the columns starting,middle and last
alter table details add column class text;
alter table details add column fathername text after name;
alter table details add column mothername text first;

#removing the column 
alter table details drop column mothername;

#chaning the dayatype in the column
alter table details modify sno varchar(4);

#3.remove the data from a table
set autocommit =0;
delete from details;
rollback;
TRUNCATE TABLE details; #permenant

#4.remove the table from database
DROP TABLE details;

#5.remove the database
DROP database bhavana;



