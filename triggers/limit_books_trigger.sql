CREATE OR REPLACE TRIGGER limit_loan_trigger
BEFORE INSERT ON Loans
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM Loans
    WHERE member_id = :NEW.member_id AND return_date IS NULL;

    IF v_count >= 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Member already has 3 active loans.');
    END IF;
END;