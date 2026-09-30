CREATE TABLE job_history (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id DECIMAL(4,0) DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);
DESCRIBE job_history;