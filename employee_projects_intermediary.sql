CREATE TABLE employee_projects (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    project_id BIGINT NOT NULL,
    CONSTRAINT to_employee FOREIGN KEY (employee_id) REFERENCES employee (emp_id),
    CONSTRAINT to_projects FOREIGN KEY (project_id) REFERENCES project (id),
    UNIQUE KEY employee_and_project_unique (employee_id, project_id)
);