SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN

    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = 1;

    IF v_salary >= 700000 THEN
        GOTO high_salary;

    ELSIF v_salary >= 500000 THEN
        GOTO normal_salary;

    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: HIGH');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: NORMAL');
    GOTO finish;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: LOW');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/