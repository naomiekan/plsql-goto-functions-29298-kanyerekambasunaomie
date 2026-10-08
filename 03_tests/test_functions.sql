SET SERVEROUTPUT ON;

DECLARE
    v_result NUMBER;
    v_text VARCHAR2(200);
BEGIN

    -- Test B1
    v_result := fn_annual_salary(500000);
    DBMS_OUTPUT.PUT_LINE(
        'B1 Annual Salary: ' || v_result
    );

    -- Test B2
    v_result := fn_years_of_service(DATE '2020-01-01');
    DBMS_OUTPUT.PUT_LINE(
        'B2 Years of Service: ' || v_result
    );

    -- Test B3
    v_result := fn_calculate_tax(500000);
    DBMS_OUTPUT.PUT_LINE(
        'B3 Tax: ' || v_result
    );

    -- Test B4
    v_text := fn_dept_name(10);
    DBMS_OUTPUT.PUT_LINE(
        'B4 Department: ' || v_text
    );

    -- Test C1
    v_text := fn_validate_payroll(500000);
    DBMS_OUTPUT.PUT_LINE(
        'C1 Payroll Validation: ' || v_text
    );

END;
/