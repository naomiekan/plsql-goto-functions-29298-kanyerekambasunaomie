# Individual Assignment III – PL/SQL GOTO Statements and Functions

**Student Name:** Kanyere Kambasu Naomie
**Student ID:** 29298
**Database:** Oracle Database 21c

## 1. Introduction

This repository contains my Individual Assignment III on PL/SQL GOTO statements and functions.

The assignment covers:

* GOTO statements
* Labels
* IF statements
* Stored functions
* Exception handling
* Functions used in SQL
* Payroll validation
* Testing and documentation

## 2. Repository Structure

```text
plsql-goto-functions-29298-naomie/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

## 3. How to Run

### Step 1 – Setup

Run:

```text
00_setup/create_tables.sql
```

This creates the employees table and inserts sample employee data.

### Step 2 – Run GOTO Programs

Run the files in:

```text
01_goto/
```

The files demonstrate:

* Number classification
* Salary review
* Illegal GOTO and correction
* Rewriting a program without GOTO

### Step 3 – Run Functions

Run the files in:

```text
02_functions/
```

These files create the stored functions.

### Step 4 – Run Tests

Run:

```text
03_tests/B5_functions_in_select.sql
03_tests/test_functions.sql
03_tests/test_validate_payroll.sql
```

## 4. Main Concepts

### GOTO

GOTO transfers program control to a labeled statement.

Example:

```sql
GOTO positive_number;

<<positive_number>>
DBMS_OUTPUT.PUT_LINE('Positive');
```

### Function

A function is a stored PL/SQL program that returns a value.

Example:

```sql
RETURN p_monthly_salary * 12;
```

### Exception Handling

Exception handling is used to manage errors.

Example:

```sql
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ...
    WHEN OTHERS THEN
        ...
```

### Functions in SQL

Stored functions can be used inside SQL statements.

Example:

```sql
SELECT fn_annual_salary(salary)
FROM employees;
```

## 5. Results

The programs were tested using Oracle Database 21c.

The required screenshots are included in the `screenshots` folder.

## 6. Challenges

The main challenge was understanding how GOTO statements work with labels and why some GOTO statements are illegal.

Another challenge was understanding how stored functions return values and how they can be used inside SELECT statements.

## 7. Conclusion

This assignment helped me understand PL/SQL control flow, GOTO statements, stored functions, exception handling, and using functions with SQL queries.
