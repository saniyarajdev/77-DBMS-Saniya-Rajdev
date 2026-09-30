-- Ques 15
CREATE TABLE departments (
    DEPARTMENT_ID DECIMAL(4,0) NOT NULL,
    DEPARTMENT_NAME VARCHAR(30) NOT NULL,
    MANAGER_ID DECIMAL(6,0) NOT NULL,
    LOCATION_ID DECIMAL(4,0) DEFAULT NULL,
    PRIMARY KEY (DEPARTMENT_ID, MANAGER_ID)
);
CREATE TABLE employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary DECIMAL(8,2) DEFAULT NULL,
    commission DECIMAL(2,2) DEFAULT NULL,
    manager_id DECIMAL(6,0) NOT NULL,
    department_id DECIMAL(4,0) NOT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);