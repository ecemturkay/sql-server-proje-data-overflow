--Poliklinik bazýnda bakýlan hasta sayýsý.
create view view_operationcountbypoliclinic as
select tbl_policlinic.name as "Poliklinik Ýsimleri" , COUNT(tbl_operation.operationid) as "Poliklinik bazýnda iþlem sayýsý"
from [dbo].[tbl_operation] 
inner join [dbo].[tbl_patients]
on tbl_operation.patientid=tbl_patients.id
inner join [dbo].[tbl_policlinic]
on tbl_operation.policlinicid=tbl_policlinic.id
where tbl_operation.processid=3
group by tbl_policlinic.name

