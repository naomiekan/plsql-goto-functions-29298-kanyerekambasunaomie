-- Individual Assignment III
-- PL/SQL GOTO Statements and Functions
-- Student: Kanyere Kambasu Naomie
-- Student ID: 29298

SET SERVEROUTPUT ON;

-- Drop tables if they already exist
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/

-- Create employees table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    department_id NUMBER,
    department_name VARCHAR2(100),
    salary NUMBER(10,2),
    hire_date DATE
);

-- Insert sample employees
INSERT INTO employees
VALUES (1, 'Alice Ingabire', 10, 'IT', 500000, DATE '2022-01-15');

INSERT INTO employees
VALUES (2, 'Jean Mugisha', 20, 'Finance', 650000, DATE '2020-06-10');

INSERT INTO employees
VALUES (3, 'Eric Uwimana', 10, 'IT', 450000, DATE '2024-03-20');

INSERT INTO employees
VALUES (4, 'Diane Mukamana', 30, 'HR', 700000, DATE '2019-09-05');

INSERT INTO employees
VALUES (5, 'Patrick Niyonzima', 20, 'Finance', 800000, DATE '2018-02-12');

COMMIT;

-- Check the data
SELECT * FROM employees;