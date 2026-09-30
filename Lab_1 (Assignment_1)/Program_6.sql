-- Ques 6
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(50),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    CHECK (max_salary <= 12500)
);
DESCRIBE jobs;