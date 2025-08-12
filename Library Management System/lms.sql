-- Library Management System

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    published_year INT,
    available BOOLEAN
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

CREATE TABLE transactions (
    trans_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY(book_id) REFERENCES books(book_id),
    FOREIGN KEY(member_id) REFERENCES members(member_id)
);

-- Insert sample data
INSERT INTO books VALUES (1, 'Java Basics', 'A. Sharma', 2020, TRUE);
INSERT INTO books VALUES (2, 'DBMS Made Easy', 'K. Gupta', 2018, TRUE);

INSERT INTO members VALUES (101, 'Priya Sinha', 'priya@email.com', '2022-09-01');

INSERT INTO transactions VALUES (1, 1, 101, '2023-03-10', NULL);

-- Sample Queries
SELECT * FROM books;
SELECT * FROM members WHERE join_date > '2022-01-01';
