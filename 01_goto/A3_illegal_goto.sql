
SET SERVEROUTPUT ON;

-- =====================================================
-- PART 1: ILLEGAL GOTO EXAMPLE
-- =====================================================

DECLARE
BEGIN

    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('This is an illegal GOTO example.');
    END IF;

END;
/
-- =====================================================
-- PART 2: CORRECTED VERSION
-- =====================================================

DECLARE
BEGIN

    IF 1 = 1 THEN
        GOTO valid_label;
    END IF;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('GOTO fixed successfully.');

END;
/