-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database
-- Find all appointments for a specific patient given their name
SELECT *
FROM appointments AS a
JOIN patients AS p ON a.patient_id = p.patient_id
WHERE p.name = 'John Doe';

-- Find all appointments for a specific doctor given their name
SELECT *
FROM appointments AS a
JOIN doctors AS d ON a.doctor_id = d.doctor_id
WHERE d.name = 'Dr. Smith';

-- Retrieve medical records for a particular patient
SELECT *
FROM medical_records AS mr
JOIN patients AS p ON mr.patient_id = p.patient_id
WHERE p.name = 'Jane Smith';

-- Add a new patient to the database
INSERT INTO patients (name, age, gender, contact_number)
VALUES ('Alice Johnson', 30, 'Female', '123-456-7890');

-- Add a new doctor to the database
INSERT INTO doctors (name, specialization, contact_number)
VALUES ('Dr. Mark Johnson', 'Cardiology', '987-654-3210');

-- Schedule a new appointment for a patient with a doctor
INSERT INTO appointments (patient_id, doctor_id, appointment_date, purpose)
VALUES (1, 2, '2023-12-15 10:00:00', 'Regular Checkup');

-- Add a new medical record for a patient
INSERT INTO medical_records (patient_id, doctor_id, diagnosis, prescription)
VALUES (1, 2, 'Common Cold', 'Rest and hydration, prescribe medication X');
