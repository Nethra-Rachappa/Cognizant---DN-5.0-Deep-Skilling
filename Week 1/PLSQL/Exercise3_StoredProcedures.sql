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




CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest

AS

BEGIN

UPDATE Accounts

SET Balance=Balance+(Balance*0.01)

WHERE AccountType='Savings';

COMMIT;

END;
/




CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(

p_department VARCHAR2,

p_bonus NUMBER

)

AS

BEGIN

UPDATE Employees

SET Salary=Salary+(Salary*p_bonus/100)

WHERE Department=p_department;

COMMIT;

END;
/





CREATE OR REPLACE PROCEDURE TransferFunds(

p_from NUMBER,

p_to NUMBER,

p_amount NUMBER

)

AS

v_balance NUMBER;

BEGIN

SELECT Balance

INTO v_balance

FROM Accounts

WHERE AccountID=p_from;

IF v_balance>=p_amount THEN

UPDATE Accounts

SET Balance=Balance-p_amount

WHERE AccountID=p_from;

UPDATE Accounts

SET Balance=Balance+p_amount

WHERE AccountID=p_to;

COMMIT;

ELSE

DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

END IF;

END;
/
