-- ================================================
-- schema.sql
-- Purpose: Create the database and Students table
-- ================================================

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS student_db;

-- Step 2: Select the database to use
USE student_db;

-- Step 3: Create the Students table
CREATE TABLE IF NOT EXISTS Students (
    student_id  INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each student
    name        VARCHAR(100)   NOT NULL,          -- Student's full name
    age         INT            NOT NULL,          -- Student's age
    department  VARCHAR(50)    NOT NULL,          -- e.g. CSE, ECE, MECH
    marks       DECIMAL(5, 2)  NOT NULL           -- Marks out of 100
);
