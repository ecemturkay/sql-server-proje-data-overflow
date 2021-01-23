create procedure sp_update_lastvisit
AS
BEGIN
declare @days int
declare @pid int
declare @oid int
declare @date datetime
declare cls cursor for select id from tbl_patients
open cls 
fetch next from cls into @pid

while @@FETCH_STATUS = 0
	begin
	
	select @oid=operationid from tbl_operation where patientid=@pid and processid=3
	select top 1 @date=time from tbl_completed where operationid=@oid order by time
	set @days =  DATEDIFF(day, @date , GETDATE());
	update tbl_patients
	set lastvisitasdays=@days
	where id=@pid
	fetch next from cls into @pid
	end
close cls
deallocate cls
END







