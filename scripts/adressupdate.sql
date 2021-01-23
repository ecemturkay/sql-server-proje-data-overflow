/****** Script for SelectTopNRows command from SSMS  ******/
declare @pid int
declare @mahalle int

declare cls cursor for select patientid from tbl_patients
open cls
fetch next from cls into @pid

while @@FETCH_STATUS = 0

begin

	select top 1 @mahalle = MAH_ID  from [dbo].[tbl_adress] order by NEWID()

	update tbl_patients 
		set adressid=@mahalle
		where patientid=@pid

	FETCH NEXT FROM cls INTO @pid;
end

close cls;
deallocate cls;




