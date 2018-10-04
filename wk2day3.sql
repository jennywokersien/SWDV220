--Wk2Day3 Lab
--1.
--use MyGuitarShop;
--create nonclustered index IX_Addresses_Zip on Addresses (ZipCode);

--2.
use master;
IF DB_ID('MyWebDB') IS NOT NULL
	DROP DATABASE MyWebDB
GO

create database MyWebDB;
go

use MyWebDB;

create table Users 
(
	UserID int not null identity primary key,
	EmailAddress varchar(100) not null unique,
	FirstName varchar(100) not null,
	LastName varchar(100) not null
);

create table Products
(
	ProductID int not null identity primary key,
	ProductName varchar(100) not null
);

create table Downloads
(
	DownloadID int not null identity primary key,
	UserID int not null, --references Users(UserID),
	DownloadDate smalldatetime not null,
	FileName varchar(255) not null,
	ProductID int not null,
	Foreign Key (UserID) references Users(UserID),
	Foreign Key (ProductID) references Products(ProductID)
)

--3.
--alter table Products
--add Price decimal(5,2) not null default 9.99,
--	DateAdded datetime not null;

--3.alternative
alter table Products
add Price decimal(5,2) not null default 9.99;
alter table Products
add	DateAdded datetime not null;

--4.
alter table Users
alter column FirstName varchar(20) not null; 