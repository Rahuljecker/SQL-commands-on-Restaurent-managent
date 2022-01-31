use project;
create table payment_mode(cod decimal(10,2) , online_pay varchar(15) ,customerid int not null);
drop table payment_mode;
desc payment_mode;
select *from payment_mode;
insert into payment_mode(cod,customerid) values(2300,1);
insert into payment_mode(cod,customerid) values(345.0,4);
insert into payment_mode(cod,customerid) values(40000,7);
insert into payment_mode(online_pay,customerid) values('UPI',4);
insert into payment_mode(online_pay,customerid) values('wallet',3);
insert into payment_mode(online_pay,customerid) values('net_banking',2);

alter table payment_mode add foreign key payment_mode(customerid) references customer(customerid);