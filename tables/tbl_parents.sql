create table tbl_parents(
parentid int IDENTITY(1,1) PRIMARY KEY,
name nvarchar(30) not null,
surname nvarchar(50) not null,
telephonenumber varchar(15),
identitynumber nvarchar(11),
relationship nvarchar(50)
)