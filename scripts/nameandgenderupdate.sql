/****** Script for SelectTopNRows command from SSMS  ******/
declare @name nvarchar(30)
declare @surname nvarchar(30)
declare @gender int
declare @pid int

declare cls cursor for select [patientid] from [dbo].[tbl_patients]
open cls 
fetch next from cls into @pid

while @@FETCH_STATUS=0
begin

SELECT @gender=FLOOR(RAND()*2)
select top 1 @surname=soyad from surnames order by NEWID()
	if @gender=0
		begin
		select top 1 @name=name from malenames order by NEWID()
		update tbl_patients 
		set name=@name, surname=@surname, gender='Male'
		where patientid=@pid
		end
	
	else if @gender=1
		begin
		select top 1 @name=name from femalenames order by NEWID()
		update tbl_patients 
		set name=@name, surname=@surname, gender='Female'
		where patientid=@pid
		end

fetch next from cls into @pid
end

close cls
deallocate cls






