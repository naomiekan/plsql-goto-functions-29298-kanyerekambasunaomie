SET SERVEROUTPUT ON;

SELECT
    employee_id,
    employee_name,
    salary AS monthly_salary,

    fn_annual_salary(salary) AS annual_salary,

    fn_years_of_service(hire_date) AS years_of_service,

    fn_calculate_tax(salary) AS tax,

    fn_dept_name(department_id) AS department,

    fn_validate_payroll(salary) AS payroll_status

FROM employees
ORDER BY employee_id;