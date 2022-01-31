use project;
Create table Restaurant (Res_id int not null,cus_Name varchar(20), Address Varchar(20), Openig_Time time, Closing_timing time,Ratings int,list_of_Foods varchar(50), primary key (Res_id));
desc restaurant;
select *from restaurant;
drop table restaurant;
Insert into Restaurant values(101,'Chez Panise','Hooghly','10:00','10:00',4,'Chowmin,Lassi');
Insert into Restaurant values(102,'Manresa','Hooghly','10:00','10:00',4,'Egg Roll,Biryani');
Insert into Restaurant values(103,'Mini Kabob','Salt Lake','9:00','9:00',5,'Biryani,Chowmin,Noodles');
Insert into Restaurant values(104,'Zofting',' Hindmotors','9:00','9:00',4,'Cold Coffee, Masala Tea, Fired Rice');
Insert into Restaurant values(105,'Saltie Girl',' Kalyani','8:00','8:00',3,'Cold Drinks');
Insert into Restaurant values(106,'71 Above','Nadia','6:00','9:00',2,'Fired Rice');
Insert into Restaurant values(107,'Water Gril','Naihati','10:00','7:00',3,'Cold Coffee, Cold Driks');

select *from customer;
select *from contact_us;
drop table contact_us;
Create table contact_us(customerid int not null ,cs_phone_no char(10) not null,for_any_query varchar(20),foreign key(customerid) references customer(customerid));
Insert into contact_us values(1,'9988776655','support@gmail.com');
Insert into contact_us values(2,'9988776644','support@gmail.com');
Insert into contact_us values(3,'9988776633','support@gmail.com');
Insert into contact_us values(4,'9887766222','support@gmail.com');
Insert into contact_us values(5,'9988776611','support@gmail.com');
Insert into contact_us values(6,'9988776600','support@gmail.com');
Insert into contact_us values(7,'9988776677','support@gmail.com');


Create table Restaurant (Res_id int not null,Name varchar(20), Address Varchar(20), Openig_Time time, Closing_timing time,Ratings int, primary key (Res_id));
desc restaurant;
select *from restaurant;
-- drop table restaurant;
Insert into Restaurant values(101,'Chez Panise','Hooghly','10:00','10:00',4);
Insert into Restaurant values(102,'Manresa','Howrah','10:00','10:00',4);
Insert into Restaurant values(103,'Mini Kabob','Salt Lake','9:00','9:00',5);
Insert into Restaurant values(104,'Zofting','Hindmotors','9:00','9:00',4);
Insert into Restaurant values(105,'Saltie Girl','Kalyani','8:00','8:00',3);
Insert into Restaurant values(106,'71 Above',' Nadia','6:00','9:00',2);
Insert into Restaurant values(107,'Water Gril','Naihati','10:00','7:00',3);


show tables;

Create table Food_list(res_id int not null,list_of_foods varchar(50), foreign key(res_id) references Restaurant(res_id));
drop table food_list;
desc food_list;
select *from food_list;
Insert into food_list values(101,'Chowmin');
Insert into food_list values(101,'Lassi');
Insert into food_list values(102,'Egg_Roll');
Insert into food_list values(102,'Biryani');
Insert into food_list values(103,'Biryani');
Insert into food_list values(103,'Chowmin');
Insert into food_list values(103,'Noodles');
Insert into food_list values(104,'Cold Coffee');
Insert into food_list values(104,'Masala_Tea');
Insert into food_list values(104,'Fried_Rice');
Insert into food_list values(105,'Cold_Drinks');
Insert into food_list values(106,'Fried_Rice');
Insert into food_list values(107,'Cold_Coffee');
Insert into food_list values(107,'Cold_Drinks');
