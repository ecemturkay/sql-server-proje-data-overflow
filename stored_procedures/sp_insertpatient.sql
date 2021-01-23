create procedure sp_insertpatient
@patientidno nvarchar(11),
@name nvarchar(30), 
@surname nvarchar(30),
@gender nchar(10),
@birthdate date,
@adressid int
as begin
INSERT INTO [dbo].[tbl_patients]
           ([identitynumber]
           ,[name]
           ,[surname]
		   ,[gender]
           ,[birthdate]
           ,[adressid])
     VALUES
           (@patientidno
           ,@name
		   ,@surname
		   ,@gender
		   ,@birthdate
		   ,@adressid)
end
