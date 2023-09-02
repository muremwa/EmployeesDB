CREATE TABLE device (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    serial_number VARCHAR(100) NOT NULL,
    employee_id INT NOT NULL,
    CONSTRAINT device_employee FOREIGN KEY (employee_id) REFERENCES employee (emp_id)
);