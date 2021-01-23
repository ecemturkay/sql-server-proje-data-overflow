create table tbl_patients(
id int primary key not null,
identitynumber nvarchar(11) not null, 
name nvarchar(30) not null,
surname nvarchar(30) not null,
gender nchar(6) not null,
age float,
birthdate date,
bloodtypeid int,
adressid int,
lastvisitasdays int
)