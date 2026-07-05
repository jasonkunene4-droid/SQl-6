create database ECommerceDB;
use ECommerceDB;

create table Categories(
CategoryID int primary key,
CategoryName varchar(50) not null unique);

create table Products(
ProductID int primary key, 
ProductName VARCHAR(100) NOT NULL UNIQUE,
CategoryID INT,
Price DECIMAL(10,2) NOT NULL,
StockQuantity INT,
foreign key(CategoryID) References Categories (CategoryID)
); 

create table Customers(
CustomerID int primary key,
CustomerName varchar(100) not null unique,
Email varchar(100) unique,
JoinDate DATE
);

create table Orders(
OrderID int primary key,
CustomerID int,
OrderDate date not null,categoriescustomerscategories
TotalAmount decimal(10,2),
foreign key (CustomerID) References Customers(CustomerID)
);


insert into Categories(CategoryID,CategoryName)
values(1,'Electronic'),
(2,'Books'),
(3,'Home Goods'),
(4,'Apparel');

select * from Categories;

insert into Products(ProductID,ProductName,CategoryID,Price,
StockQuantity)
values(101,'Laptop Pro',1, 1200,50),
(102,'SQL Handbook',2,45.50,200),
(103,'Smart Speaker',1,99.99,150),
(104,'Coffee Maker',3,75,80),
(105,'Novel:The Great SQL',2,25,120),
(106,'Wireless Earbuds',1,150,100),
(107,'Blender X',3,120,60),
(108,'T-Shirt',4,20,300);

select * from Products;

insert into Customers(CustomerID,CustomerName,Email,
JoinDate)
values(1,'Alice Wonderland','alice@example.com','2023-01-10'),
(2,'Bob the Builder','bob@example.com','2022-11-25'),
(3,'Charlie Chaplin','charlie@example.com','2023-03-01'),
(4,'Diana Prince','diana@example.com','2021-04-26');

select * from Customers;

insert into Orders(OrdersID,CustomerID,OrderDate,TotalAmount)
values(1001,1,'2023-04-26',1245.50),
(1002,2,'2023-10-12',99.99),
(1003,1,'2023-07-01',145),
(1004,3,'2023-01-14',150),
(1005,2,'2023-09-24',120),
(1006,1,'2023-06-19',20);

select * from Orders;

