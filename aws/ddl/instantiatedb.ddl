CREATE DATABASE db1;
CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,  -- auto-incremented primary key
                       first_name VARCHAR(50),      -- a column for the user's first name
                       last_name VARCHAR(50),       -- a column for the user's last name
                       email VARCHAR(100),          -- a column for the user's email address
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- a timestamp for when the record was created
);
INSERT INTO db1 (first_name, last_name, email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Alice', 'Johnson', 'alice.johnson@example.com');
