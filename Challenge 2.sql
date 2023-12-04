create database DWH_Project;

create table DimCustomer(
CustomerID int not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
Age int not null,
Gender varchar(50) not null,
City varchar(50) not null,
NoHp varchar(50) not null
CONSTRAINT PKCustomer PRIMARY KEY(CustomerID)
);

create table DimProduct(
ProductID int not null,
ProductName varchar(255) not null,
ProductCategory varchar(255) not null,
ProductUnitprice int not null,
CONSTRAINT PKProduct PRIMARY KEY(ProductID)
);

create table DimStatusOrder(
StatusID int not null,
StatusOrder varchar(50) not null,
StatusOrderDesc varchar(50) not null,
CONSTRAINT PKStatusOrder PRIMARY KEY(StatusID)
);

create table FactSalesOrder(
OrderID int not null,
CustomerID int not null,
ProductID int not null,
Quantity int not null,
Amount int not null,
StatusID int not null,
OrderDate date not null,
CONSTRAINT PKSalesOrder PRIMARY KEY(OrderId),
CONSTRAINT FKCustomerOrder FOREIGN KEY(CustomerID) REFERENCES DimCustomer(CustomerID),
CONSTRAINT FKProductOrder FOREIGN KEY(ProductID) REFERENCES DimProduct(ProductID),
CONSTRAINT FKStatusOrder FOREIGN KEY(StatusID) REFERENCES DimStatusOrder(StatusID)
);