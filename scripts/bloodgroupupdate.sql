declare @blood int
declare @pid int

declare cls cursor for select patientid from tbl_patients
open cls
fetch next from cls into @pid

while @@FETCH_STATUS=0
begin
select top 1 @blood=id from tbl_bloodgroups order by NEWID()

update tbl_patients 
set bloodtypeid=@blood
where patientid=@pid

fetch next from cls into @pid

end

close cls
deallocate cls

