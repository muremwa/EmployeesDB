CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NULL,
    last_name VARCHAR(45) NULL,
    email_id VARCHAR(45) NULL,
    dob DATE NULL,
    address_id BIGINT NULL,
    CONSTRAINT address_id UNIQUE (address_id),
    CONSTRAINT employee_to_address FOREIGN KEY (address_id) REFERENCES address (id)
);

