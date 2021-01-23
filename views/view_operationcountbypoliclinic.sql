--Poliklinik baz�nda bak�lan hasta say�s�.
create view view_operationcountbypoliclinic as
select tbl_policlinic.name as "Poliklinik �simleri" , COUNT(tbl_operation.operationid) as "Poliklinik baz�nda i�lem say�s�"
from [dbo].[tbl_operation] 
inner join [dbo].[tbl_patients]
on tbl_operation.patientid=tbl_patients.id
inner join [dbo].[tbl_policlinic]
on tbl_operation.policlinicid=tbl_policlinic.id
where tbl_operation.processid=3
group by tbl_policlinic.name

