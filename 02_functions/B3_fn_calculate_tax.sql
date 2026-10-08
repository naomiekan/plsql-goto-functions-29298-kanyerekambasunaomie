CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    IF p_salary <= 0 THEN
        RETURN 0;
    END IF;

    RETURN p_salary * 0.10;
END;
/