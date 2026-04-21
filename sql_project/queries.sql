-- ================================================
-- queries.sql
-- Purpose: Practice SQL queries on Students table
-- Run this AFTER schema.sql and data.sql
-- ================================================

USE student_db;


-- -----------------------------------------------
-- 1. SELECT — Retrieve all records
-- -----------------------------------------------
-- Get every column of every student
SELECT * FROM Students;


-- -----------------------------------------------
-- 2. SELECT — Specific columns only
-- -----------------------------------------------
-- Show only name, department, and marks
SELECT name, department, marks
FROM Students;


-- -----------------------------------------------
-- 3. WHERE — Filter by marks
-- -----------------------------------------------
-- Students who scored more than 80
SELECT name, department, marks
FROM Students
WHERE marks > 80;


-- -----------------------------------------------
-- 4. WHERE — Filter by department
-- -----------------------------------------------
-- All students in the CSE department
SELECT name, age, marks
FROM Students
WHERE department = 'CSE';


-- -----------------------------------------------
-- 5. ORDER BY — Sort marks highest to lowest
-- -----------------------------------------------
SELECT name, department, marks
FROM Students
ORDER BY marks DESC;


-- -----------------------------------------------
-- 6. ORDER BY — Sort names A to Z
-- -----------------------------------------------
SELECT name, department, marks
FROM Students
ORDER BY name ASC;


-- -----------------------------------------------
-- 7. GROUP BY — Average marks per department
-- -----------------------------------------------
SELECT department,
       AVG(marks) AS avg_marks
FROM Students
GROUP BY department;


-- -----------------------------------------------
-- 8. GROUP BY — Count students per department
-- -----------------------------------------------
SELECT department,
       COUNT(*) AS total_students
FROM Students
GROUP BY department;


-- -----------------------------------------------
-- 9. Combined query
--    WHERE + GROUP BY + ORDER BY together
-- -----------------------------------------------
-- For each department, show average marks of
-- students who scored above 60, sorted best dept first
SELECT department,
       COUNT(*)   AS total_students,
       AVG(marks) AS avg_marks
FROM Students
WHERE marks > 60
GROUP BY department
ORDER BY avg_marks DESC;
