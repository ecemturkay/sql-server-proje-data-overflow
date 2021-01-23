--Poliklinik bazýnda bakýlan hasta sayýsý.
create view view_operationcountbyservice as
select tbl_services.name as "Servis" , COUNT(tbl_operation.operationid) as "Servis bazýnda iþlem sayýsý"
from [dbo].[tbl_operation] 
inner join [dbo].[tbl_services]
on tbl_operation.serviceid=tbl_services.id
where tbl_operation.processid=3
group by tbl_services.name

