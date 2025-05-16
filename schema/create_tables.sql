CREATE TABLE Members (
    member_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    join_date DATE
);

CREATE TABLE Books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(255),
    author VARCHAR2(100),
    copies NUMBER
);

CREATE TABLE Loans (
    loan_id NUMBER PRIMARY KEY,
    member_id NUMBER,
    book_id NUMBER,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);