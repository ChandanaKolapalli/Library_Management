CREATE OR REPLACE VIEW ActiveLoans AS
SELECT l.loan_id, m.name AS member_name, b.title AS book_title, l.loan_date
FROM Loans l
JOIN Members m ON l.member_id = m.member_id
JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL;