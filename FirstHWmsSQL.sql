create table Groups
(
    id int not null identity (1,1) primary key ,
    name nvarchar(10) not null unique ,
    rating int not null check (rating > 0 and rating < 6),
    year INT NOT NULL CHECK(year > 0 and year < 6)
    );

create table Departments
(
    id int not null identity(1,1) primary key,
    financing money not null default  0 check(financing > 0),
    name nvarchar(100) not null unique
);

create table Faculties
(
    id int not null identity(1,1) primary key,
    name nvarchar(100) not null unique

);

create table Teachers
(
    id int not null identity(1,1) primary key,
    employmentDate date not null check (employmentDate >= '1990-01-01'),
    name nvarchar(max) not null,
    premium money default 0 check(premium > -1),
    salary money not null check(salary > 0),
    surname nvarchar(MAX) not null
);
