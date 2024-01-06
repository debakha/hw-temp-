create database Eccomerce;
use Eccomerce;
create table Cars (
                      car_id int primary key identity(1, 1),
                      brand nvarchar(10) NOT NULL,
                      model nvarchar(20) NOT NULL,
                      year int NOT NULL,
                      fuel_type_id int,
                      body_type_id int,
                      color_id int,
                      image_link nvarchar(200),
                      foreign key (fuel_type_id) references FuelTypes(fuel_type_id),
                      foreign key (body_type_id) references BodyTypes(body_type_id),
                      foreign key (color_id) references Colors(color_id)
);

create table Users (
                       user_id int primary key identity(1, 1),
                       username nvarchar(100) NOT NULL,
                       password nvarchar(250) NOT NULL,
                       email nvarchar(100) NOT NULL unique
);

create table ProductList (
                             product_id int primary key identity(1, 1),
                             car_id int,
                             seller_id int,
                             price decimal NOT NULL,
                             quantity int NOT NULL,
                             foreign key (car_id) references Cars(car_id),
                             foreign key (seller_id) references Sellers(seller_id)
);

create table ManufacturingCountries (
                                        country_id int primary key identity(1, 1),
                                        country_name nvarchar(100) NOT NULL
);

create table FuelTypes (
                           fuel_type_id int primary key identity(1, 1),
                           fuel_type nvarchar(100) NOT NULL
);

create table BodyTypes (
                           body_type_id int primary key identity(1, 1),
                           body_type nvarchar(100) NOT NULL
);

create table Colors (
                        color_id int primary key identity(1, 1),
                        color_name nvarchar(100) NOT NULL
);

create table Sellers (
                         seller_id int primary key identity(1, 1),
                         user_id int,
                         company_name nvarchar(100) NOT NULL,
                         contact_number nvarchar(20) NOT NULL,
                         country_id int,
                         foreign key (user_id) references Users(user_id),
                         foreign key (country_id) references ManufacturingCountries(country_id)
);
