-- ================================================
-- data.sql
-- Purpose: Insert sample student records
-- Run this AFTER schema.sql
-- ================================================

USE student_db;

-- Insert 8 sample student records
INSERT INTO Students (name, age, department, marks) VALUES
    ('Aarav Sharma',    20, 'CSE',  91.50),
    ('Priya Nair',      21, 'ECE',  76.00),
    ('Rohit Verma',     22, 'MECH', 65.75),
    ('Sneha Das',       20, 'CSE',  88.00),
    ('Karan Mehta',     23, 'CIVIL',55.50),
    ('Anjali Patel',    21, 'ECE',  82.25),
    ('Vikram Singh',    22, 'CSE',  73.00),
    ('Meera Iyer',      20, 'MECH', 94.00);
