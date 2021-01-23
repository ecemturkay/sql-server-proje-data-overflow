ALTER TABLE tbl_operation
ADD FOREIGN KEY (patientid) REFERENCES tbl_patients(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (serviceid) REFERENCES tbl_services(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (processid) REFERENCES tbl_process(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (doctorid) REFERENCES tbl_doctors(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (departmentid) REFERENCES tbl_departments(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (policlinicid) REFERENCES tbl_policlinic(id);

ALTER TABLE tbl_operation
ADD FOREIGN KEY (parentid) REFERENCES tbl_parents(id);

ALTER TABLE tbl_patients
ADD FOREIGN KEY (bloodtypeid) REFERENCES tbl_bloodgroups(id);

ALTER TABLE tbl_patients
ADD FOREIGN KEY (adressid) REFERENCES tbl_adress(id);

ALTER TABLE tbl_ongoing
ADD FOREIGN KEY (id) REFERENCES tbl_operation(operationid);

ALTER TABLE tbl_checkin
ADD FOREIGN KEY (id) REFERENCES tbl_operation(operationid);

ALTER TABLE tbl_completed
ADD FOREIGN KEY (id) REFERENCES tbl_operation(operationid);

ALTER TABLE tbl_neighborhood
ADD FOREIGN KEY (districtid) REFERENCES tbl_district(id);

ALTER TABLE tbl_invoice
ADD FOREIGN KEY (visitid) REFERENCES tbl_operation(visitid);

ALTER TABLE tbl_invoice
ADD FOREIGN KEY (paymentmethodid) REFERENCES tbl_paymentmethod(id);

ALTER TABLE tbl_doctors
ADD FOREIGN KEY (adressid) REFERENCES tbl_adress(id);

ALTER TABLE tbl_adress
ADD FOREIGN KEY (neighborhoodid) REFERENCES tbl_neighborhood(id);