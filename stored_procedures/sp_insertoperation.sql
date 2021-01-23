create procedure sp_insertoperation
@pidnumber nvarchar(11),
@name nvarchar(30), 
@surname nvarchar(30),
@gender nchar(10),
@birthdate date,
@adressid int,
@patientid int,
@serviceid int,
@processid int,
@doctorid int,
@departmentid int,
@policlinicid int
AS BEGIN

if exists (SELECT * FROM tbl_patients WHERE identitynumber = @pidnumber)
BEGIN
select @patientid=id from tbl_patients where identitynumber=@pidnumber
INSERT INTO [dbo].[tbl_operation]
           ([patientid]
           ,[serviceid]
           ,[processid]
           ,[doctorid]
           ,[departmentid]
           ,[policlinicid])
     VALUES
           (@patientid
           ,@serviceid
           ,@processid
           ,@doctorid
           ,@departmentid
           ,@policlinicid)
END
ELSE
BEGIN
exec sp_insertoperation @pidnumber,@name,@surname,@gender,@birthdate,@adressid
select @patientid=id from tbl_patients where identitynumber=@pidnumber
INSERT INTO [dbo].[tbl_operation]
           ([patientid]
           ,[serviceid]
           ,[processid]
           ,[doctorid]
           ,[departmentid]
           ,[policlinicid])
     VALUES
           (@patientid
           ,@serviceid
           ,@processid
           ,@doctorid
           ,@departmentid
           ,@policlinicid)
END
END