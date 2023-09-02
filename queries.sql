SELECT emp_id, CONCAT(first_name, last_name) AS "name", email_id, dob, city, county FROM employee JOIN address ON employee.address_id = address.id;

SELECT
    emp_id, CONCAT(first_name, ' ', last_name) AS "name", email_id, project.name, project.id AS "project_id"
FROM
    employee
        JOIN employee_projects ON employee.emp_id = employee_projects.employee_id
        JOIN project ON employee_projects.project_id = project.id;


SELECT DISTINCT project_id, name FROM employee_projects JOIN project ON project.id = employee_projects.project_id;


# get an employee's projects
SELECT project_id, name FROM project JOIN employee_projects ON employee_projects.project_id = project.id WHERE employee_id=3;

# Get a project's assigned employees;
SELECT
    emp_id, CONCAT(first_name, ' ', last_name) AS "name", email_id
FROM employee
    JOIN employee_projects ON employee.emp_id = employee_projects.employee_id
WHERE project_id=1;
