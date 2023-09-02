ALTER TABLE address DROP CONSTRAINT address_employee;
ALTER TABLE address DROP COLUMN emp_id;
ALTER TABLE employee ADD COLUMN address_id BIGINT NULL UNIQUE;
ALTER TABLE employee ADD CONSTRAINT employee_to_address FOREIGN KEY (address_id) REFERENCES address (id);

