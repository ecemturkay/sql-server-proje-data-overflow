create table tbl_operation(
id int primary key identity not null,
patientid int not null, 
visitid varchar(10) not null,
serviceid int not null,
processid int not null,
doctorid int not null,
departmentid int not null,
policlinicid int not null,
parentid int
)