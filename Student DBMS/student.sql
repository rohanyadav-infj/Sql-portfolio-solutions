--Student Database Management

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    department VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

-- Sample data
INSERT INTO students VALUES (1, 'Rahul Verma', '2001-07-10', 'CSE');
INSERT INTO courses VALUES (101, 'DBMS', 4);

INSERT INTO enrollments VALUES (1, 1, 101, 88);

-- Example Queries
SELECT * FROM students;
SELECT students.name, courses.course_name, enrollments.marks
FROM enrollments
JOIN students ON enrollments.student_id = students.student_id
JOIN courses ON enrollments.course_id = courses.course_id;
