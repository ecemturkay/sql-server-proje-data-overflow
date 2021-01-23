create view view_departmentpoliclinic_ofdoctors
as
select distinct(d.name+d.surname) as Doctor,dep.name as Department,p.name as Policlinic from tbl_operation o 
inner join tbl_doctors d on d.id=o.doctorid
inner join tbl_departments dep on dep.id=o.departmentid
inner join tbl_policlinic p on p.id=o.policlinicid