-- Ques 19
CREATE TABLE employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    job_id INT DEFAULT NULL, 
    salary DECIMAL(8,2) DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    ON DELETE SET NULL
    ON UPDATE SET NULL
) ENGINE=InnoDB;
DESCRIBE employees;