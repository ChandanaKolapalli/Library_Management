CREATE OR REPLACE PROCEDURE IssueBook (
    p_member_id IN NUMBER,
    p_book_id IN NUMBER
) AS
    v_copies NUMBER;
BEGIN
    SELECT copies INTO v_copies FROM Books WHERE book_id = p_book_id;
    
    IF v_copies <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No copies available');
    END IF;

    INSERT INTO Loans (loan_id, member_id, book_id, loan_date, return_date)
    VALUES (Loans_seq.NEXTVAL, p_member_id, p_book_id, SYSDATE, NULL);

    UPDATE Books SET copies = copies - 1 WHERE book_id = p_book_id;
END;