CREATE TABLE address (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(50) NOT NULL,
    county VARCHAR(50) NOT NULL,
    emp_id INT NOT NULL UNIQUE,

    CONSTRAINT address_employee FOREIGN KEY (emp_id) REFERENCES employee (emp_id)
);
