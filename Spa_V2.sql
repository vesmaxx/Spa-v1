USE master
go
--------------
IF EXISTS ( SELECT * FROM sysdatabases WHERE name=N'Qlspa')

 DROP DATABASE Qlspa
 go
 CREATE DATABASE Qlspa
 ON
 ( name='Qlsapa', FILENAME='E:\Qlsapa.mdf',size = 5MB,maxsize=10MB,filegrowth=1MB)
 log on
  ( name='Qlsapa_log', FILENAME='E:\Qlsapa.ldf',size=1MB, maxsize=4MB, filegrowth=1MB)
 
 
  
 
   IF object_ID('staffs_order') is  not null 
 Drop Table staffs_order
 go
  IF object_ID('orders') is  not null 
 Drop Table orders
 
  go
 IF object_ID('users') is  not null 
 Drop Table users
 IF object_ID('customers') is  not null 
 Drop Table customers
 
   IF object_ID('staffs') is  not null 
 Drop Table staffs
 go
 IF object_ID('services') is  not null 
 Drop Table services
 go

  
 
 
 
 
  
 go
 Create Table users
 (
 Id int IDENTITY(1,1) not null,
 Email NVARCHAR(50) ,
Passwords NVARCHAR(30),
roles int default 0 , -- 0 customer  , 3 -mod , 10 admin
 Name NVARCHAR (50),
 Gender bit default 0,--1nam 0nu
 Birthday NVARCHAR(15) ,
 Photo NVARCHAR (max) ,
 custormer_status bit default 0,
  PRIMARY KEY (Id),
 )
 

 
 Create Table services
 (
 Id int IDENTITY(1,1) not null,
 Name NVARCHAR (50),
 Price FLOAT (20),
 PRIMARY KEY (Id))

 
 
 Create Table staffs
 (
 Id int IDENTITY(1,1) not null,
 Name NVARCHAR (50)not null,
 Gender bit not null,--1nam 0nu
 Birthday date not null,
 Photo NVARCHAR (max) not null,
 Email NVARCHAR(50) not null,
 Phone NVARCHAR(50) not null,
 Salary int not null, --luong
 staff_status int,
 PRIMARY KEY (Id),
  
 )
 
 
 Create Table orders
 (
Id int IDENTITY(1,1) not null,
number int default 1,
times datetime,
users_Id int,
services_Id int,
order_status int
 PRIMARY KEY (Id),
 FOREIGN key (users_Id) REFERENCES users,
 FOREIGN key (services_Id) REFERENCES services,
 )

 

 Create Table staffs_order
 (
 Id int IDENTITY(1,1) not null,
 staff_Id int,
 order_Id int,
 PRIMARY KEY (Id),
  FOREIGN key (staff_Id) REFERENCES staffs,
  FOREIGN key (order_Id) REFERENCES orders,
)
 

	INSERT INTO users VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)


 
