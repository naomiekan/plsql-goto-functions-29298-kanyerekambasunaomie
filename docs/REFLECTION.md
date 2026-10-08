# Reflection – Individual Assignment III

**Student Name:** Kanyere Kambasu Naomie
**Student ID:** 29298

## 1. What I learned

In this assignment, I learned how to use GOTO statements in PL/SQL.

A GOTO statement allows the program to jump to a specific label.

I also learned how to create stored functions. A function returns a value and can be called from a PL/SQL block or from a SQL statement.

## 2. GOTO Statements

I learned that GOTO uses a label.

For example:

```sql
GOTO positive_number;

<<positive_number>>
```

I also learned that not every GOTO statement is legal. Oracle does not allow GOTO to enter certain restricted parts of a PL/SQL block.

## 3. Functions

I created functions for:

* Annual salary
* Years of service
* Tax calculation
* Department name
* Payroll validation

Functions are useful because they allow us to reuse the same logic.

## 4. Exception Handling

I used exception handling to manage possible errors.

For example, `NO_DATA_FOUND` can happen when a SELECT INTO statement does not find a row.

I also learned that `WHEN OTHERS` can be used to handle other errors.

## 5. Functions in SQL

I learned that stored functions can be used inside a SELECT statement.

For example:

```sql
SELECT employee_name,
       fn_annual_salary(salary)
FROM employees;
```

This makes it possible to calculate values directly when retrieving data.

## 6. Challenges

My main challenge was understanding the difference between using GOTO and using normal IF statements.

I also needed to understand how functions return values and how exception handling works.

After testing the programs, I understood these concepts better.

## 7. Conclusion

This assignment improved my understanding of PL/SQL programming.

I now understand the basic use of GOTO statements, labels, stored functions, exception handling, and functions used in SQL.
