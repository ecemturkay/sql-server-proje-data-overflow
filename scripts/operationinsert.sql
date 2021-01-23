declare @patientid int
declare @visitid nvarchar(255)
declare @serviceid int
declare @processid int
declare @time datetime
declare @doctorid int
declare @departmentid int
declare @policlinicid int

declare cls cursor for select * from tbl_appointment
open cls 
fetch next from cls into
@patientid,@visitid,@serviceid,@processid,@time,@doctorid,@departmentid,@policlinicid

while @@FETCH_STATUS = 0
begin
insert into [dbo].[tbl_operation]([patientid]
           ,[visitid]
           ,[serviceid]
           ,[processid]
           ,[time]
           ,[doctorid]
           ,[departmentid]
           ,[policlinicid])
	values
			(
			@patientid,
			@visitid,
			@serviceid,
			@processid,
			@time,
			@doctorid,
			@departmentid,
			@policlinicid
			);

FETCH NEXT FROM cls INTO 
@patientid,@visitid,@serviceid,@processid,@time,@doctorid,@departmentid,@policlinicid

end
close cls;
deallocate cls;