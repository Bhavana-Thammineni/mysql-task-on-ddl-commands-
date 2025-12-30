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
delete from details where sno =1;
delete from details;


