--  Employee Management System

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10,2),
    join_date DATE,
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);

-- Sample data
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT');

INSERT INTO employees VALUES (1001, 'Ankit Singh', 2, 45000, '2022-08-01');
INSERT INTO employees VALUES (1002, 'Meera Rao', 1, 40000, '2021-12-15');

-- Example Queries
SELECT * FROM employees WHERE salary > 40000;
SELECT emp_name, dept_name FROM employees JOIN departments ON employees.dept_id = departments.dept_id;

