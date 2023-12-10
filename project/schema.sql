-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
-- Table: patients
CREATE TABLE patients (patient_id INTEGER PRIMARY KEY, name TEXT NOT NULL, age INTEGER, gender TEXT contact_number TEXT);

-- Table: doctors
CREATE TABLE doctors (
    doctor_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    specialization TEXT,
    contact_number TEXT
);

-- Table: appointments
CREATE TABLE appointments (
    appointment_id INTEGER PRIMARY KEY,
    patient_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    appointment_date TIMESTAMP,
    purpose TEXT,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id)
);

-- Table: medical_records
CREATE TABLE medical_records (
    record_id INTEGER PRIMARY KEY,
    patient_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    diagnosis TEXT,
    prescription TEXT,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id)
);

-- Table: departments
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT
);

-- Create an index to speed up searches on the patients' names
CREATE INDEX idx_patients_name ON patients (name);

-- Create an index to enhance searches based on doctors' specialization
CREATE INDEX idx_doctors_specialization ON doctors (specialization);

-- Create a view to display patient appointments with associated doctors' details
CREATE VIEW patient_appointments AS
SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;
