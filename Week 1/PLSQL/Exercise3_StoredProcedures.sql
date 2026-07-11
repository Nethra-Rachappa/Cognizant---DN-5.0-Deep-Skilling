SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE greet_employee(
    emp_name IN VARCHAR2
)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome ' || emp_name);
END;
/
BEGIN
    greet_employee('Nethra');
END;
/
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE add_numbers(
    a IN NUMBER,
    b IN NUMBER
)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Sum = ' || (a+b));
END;
/
BEGIN
    add_numbers(10,20);
END;
/
