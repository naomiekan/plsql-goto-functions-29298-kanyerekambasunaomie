CREATE OR REPLACE FUNCTION fn_dept_name (
    p_department_id NUMBER
)
RETURN VARCHAR2
IS
    v_department_name VARCHAR2(100);
BEGIN

    SELECT department_name
    INTO v_department_name
    FROM employees
    WHERE department_id = p_department_id
    AND ROWNUM = 1;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Unknown Department';

    WHEN OTHERS THEN
        RETURN 'Error';
END;
/
SELECT fn_dept_name(10) AS department
FROM dual;