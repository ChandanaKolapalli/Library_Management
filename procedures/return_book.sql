CREATE OR REPLACE PROCEDURE ReturnBook (
    p_loan_id IN NUMBER
) AS
    v_book_id NUMBER;
BEGIN
    SELECT book_id INTO v_book_id FROM Loans WHERE loan_id = p_loan_id;

    UPDATE Loans
    SET return_date = SYSDATE
    WHERE loan_id = p_loan_id;

    UPDATE Books
    SET copies = copies + 1
    WHERE book_id = v_book_id;
END;