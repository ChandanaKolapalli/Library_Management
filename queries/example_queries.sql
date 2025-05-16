-- Issue a book
EXEC IssueBook(1, 101);

-- Return a book
EXEC ReturnBook(1);

-- View all active loans
SELECT * FROM ActiveLoans;

-- See which books are out of stock
SELECT * FROM Books WHERE copies = 0;