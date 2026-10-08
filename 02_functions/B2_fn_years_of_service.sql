CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN FLOOR(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/
SELECT employee_name,
       fn_years_of_service(hire_date) AS years_of_service
FROM employees;