--  Hospital/Patient Record Database

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender CHAR(1)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100)
);

CREATE TABLE appointments (
    appoint_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    visit_date DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id)
);

-- Sample data
INSERT INTO patients VALUES (1, 'Rina Das', '1999-07-22', 'F');
INSERT INTO doctors VALUES (11, 'Dr. Abhay Kumar', 'Cardiology');

INSERT INTO appointments VALUES (101, 1, 11, '2023-05-20', 'Routine Checkup');

-- Example Queries
SELECT * FROM patients;
SELECT patients.name, doctors.name AS doctor, visit_date
FROM appointments
JOIN patients ON appointments.patient_id = patients.patient_id
JOIN doctors ON appointments.doctor_id = doctors.doctor_id;
