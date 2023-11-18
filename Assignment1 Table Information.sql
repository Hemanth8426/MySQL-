use my_database;

create table SalesPeople(
Snum int Primary Key,
Sname varchar(30) unique,
City varchar(30),
Comm int
);

insert into SalesPeople 
values (1001, 'Peel','London',12), 
(1002, 'Serres','Sanjose',13), 
(1004, 'Motika','London',11), 
(1007, 'Rifkin','Barcelona',15), 
(1003, 'Axelrod','Newyork',10);

select * from SalesPeople;

create table Customers(
Cnum int Primary Key,
Cname varchar(20),
City varchar(20) not null,
Snum int,
foreign key (Snum) references SalesPeople(Snum)  
);

insert into Customers 
values (2001, 'Hoffman', 'London', 1001), 
(2002, 'Giovanni', 'Rome', 1003), 
(2003, 'Liu', 'Sanjose', 1002), 
(2004, 'Grass', 'Berlin', 1002), 
(2006, 'Clemens', 'London', 1001), 
(2008, 'Cisneros', 'Sanjose', 1007), 
(2007, 'Pereira', 'Rome', 1004);

select * from Customers;

create table Orders(
Onum int Primary key,
Amt decimal(10,2),
Odate date,
Cnum int,
foreign key(Cnum) references Customers(Cnum),
Snum int,
foreign key(Snum) references SalesPeople(Snum)
);

insert into Orders 
values(3001, 18.69, '1990-10-3', 2008, 1007), 
(3003, 767.19, '1990-10-3', 2001, 1001), 
(3002, 1900.10, '1990-10-3', 2007, 1004), 
(3005, 5160.45, '1990-10-3', 2003, 1002), 
(3006, 1098.16, '1990-10-3', 2008, 1007), 
(3009, 1713.23, '1990-10-4', 2002, 1003), 
(3007, 75.75, '1990-10-4', 2004, 1002), 
(3008, 4273.00, '1990-10-5', 2006, 1001), 
(3010, 1309.95, '1990-10-6', 2004, 1002), 
(3011, 9891.88, '1990-10-6', 2006, 1001);

select * from Orders;
