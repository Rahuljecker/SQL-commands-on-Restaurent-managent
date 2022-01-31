show databases;
use project;
create table customer(customerid int(20) PRIMARY KEY NOT NULL auto_increment,name varchar(15) not null,Address varchar(15) not null,emailid varchar(15) not null,food_items int(10) not null,Ammount integer(25) not null,Estimated_delivery_time time,Dicount_Applied float(20) ,order_time time not null);
desc customer;
insert into customer values
(1,"Rahul","joypur","rc12@gmail.com",3,1000,"00:30",10.00,"07:30");
insert into customer 
values
(2,"Sagar","bihar","sk123@gmail.com",4,200,"00:10",2.00,"08:45");
insert into customer values(3,"Tapan","jharkhand","tk456@gmail.com",1,100,"00:25",5.00,"12:20");
insert into customer values(4,"sathi","kolkata","st123@gmail.com",2,200,"00:10",1.00,"12:35");
insert into customer values(5,"samir","howrah","sk432@gmail.com",5,2000,"00:45",50.00,"01:15");
insert into customer values(6,"Rehana","dhanbad","rk@gmail.com",2,250,"00:35",10.00,"01:15");
insert into customer values(7,"Tanu","Ranchi","tk@gmail.com",4,500,"00:42",20.00,"02.10");
select * from customer;
use project;
create table Delivery_boy(emp_id int PRIMARY KEY NOT NULL auto_increment,Mob_no int,name varchar(20) not null,current_loc varchar(25),Delivery_address varchar(30),food_items int,Amount int not null,FEEDBACK varchar(8),customerid int NOT NULL);
-- drop table Delivery_boy;
desc Delivery_boy;
insert into Delivery_boy values(
101,86556465,"Rahul","howrah","kolkata",4,1000,"GOOD",1
);
insert into Delivery_boy values (102,88985598,"sagar","bhiwadi","bihar",2,500,"MODERATE",2);
insert
into 
Delivery_boy
values(103,98875684,"Tapan","jamshedpur","Ranchi",4,800,"GOOD",3);
insert into Delivery_boy values(104,69884458,"samir","Domjur","howrah",5,1200,"BAD",4);
insert into Delivery_boy values(105,63987415,"Ratul","kadamtala","Maidan",6,1800,"GOOD",5);
insert into Delivery_boy values(106,32659874,"Rakul","Amta","jhikira",10,1200,"GOOD",6);
insert into Delivery_boy values(107,98547865,"Rick","khorop","Amta",1,100,"BAD",7);
desc Delivery_boy;
select * from Delivery_boy;
update Delivery_boy set current_loc="Dumdum" where emp_id=101;
update Delivery_boy set current_loc="Baranagar" where emp_id=102;
update Delivery_boy set current_loc="citycentre" where emp_id=103;
update Delivery_boy set current_loc="Kalighat" where emp_id=104;
update Delivery_boy set current_loc="girispark" where emp_id=105;
update Delivery_boy set current_loc="stadium" where emp_id=106;
update Delivery_boy set current_loc="Bagbazar" where emp_id=107;
update Delivery_boy set Delivery_address="Hooghly" where emp_id=101;
update Delivery_boy set Delivery_address="Howrah" where emp_id=102;
update Delivery_boy set Delivery_address="salt lake" where emp_id=103;
update Delivery_boy set Delivery_address="Hindmotors" where emp_id=104;
update Delivery_boy set Delivery_address="Kalyani" where emp_id=105;
update Delivery_boy set Delivery_address="Nadia"where emp_id=106;
update Delivery_boy set Delivery_address="Naihati" where emp_id=107;


alter table Delivery_boy add foreign key Delivery_boy(customerid) references customer(customerid) ;
show tables;



