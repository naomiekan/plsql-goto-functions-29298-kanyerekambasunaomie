CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_salary NUMBER
)
RETURN VARCHAR2
IS
BEGIN

    IF p_salary IS NULL THEN
        RETURN 'INVALID - Salary is NULL';

    ELSIF p_salary <= 0 THEN
        RETURN 'INVALID - Salary must be positive';

    ELSE
        RETURN 'VALID';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'ERROR - ' || SQLERRM;
END;
/
SELECT fn_validate_payroll(500000)
FROM dual;