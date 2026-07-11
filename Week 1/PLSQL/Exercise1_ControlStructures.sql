SET SERVEROUTPUT ON;

DECLARE
    marks NUMBER := 85;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: Fail');
    END IF;
END;
/


DECLARE
    v_age NUMBER;
BEGIN
    FOR c IN (SELECT CustomerID, DOB FROM Customers) LOOP

        v_age := FLOOR(MONTHS_BETWEEN(SYSDATE,c.DOB)/12);

        IF v_age > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = c.CustomerID;

        END IF;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Interest updated successfully.');

END;
/


ALTER TABLE Customers
ADD IsVIP VARCHAR2(5);



BEGIN

FOR c IN (SELECT CustomerID,Balance FROM Customers) LOOP

    IF c.Balance > 10000 THEN

        UPDATE Customers
        SET IsVIP='TRUE'
        WHERE CustomerID=c.CustomerID;

    ELSE

        UPDATE Customers
        SET IsVIP='FALSE'
        WHERE CustomerID=c.CustomerID;

    END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE('VIP Status Updated');

END;
/
