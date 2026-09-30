-- Ques 16
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
    manager_id DECIMAL(6,0) DEFAULT NULL,
    department_id DECIMAL(4,0) DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
) ENGINE=InnoDB;
DESCRIBE employees;