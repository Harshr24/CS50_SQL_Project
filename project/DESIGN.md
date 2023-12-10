# Design Document

By YOUR NAME HERE

Video overview: [Insert URL Here]

## Scope

The database encompasses entities critical for managing hospital operations, including Patients, Doctors, Appointments, Medical Records, and Departments. It facilitates patient information storage, appointment scheduling, and medical staff management within various departments.

The database does not handle financial transactions or laboratory results, as these are managed by separate systems.

## Functional Requirements

### What a User Should be Able to Do

Users should be able to:
- Register/update patient details.
- Schedule, update, and cancel appointments for patients with doctors.
- Record and update medical diagnoses and prescriptions.
- Manage and assign doctors to different departments.

### Beyond Scope

The database does not handle:
- Financial transactions (handled by the finance system).
- Laboratory results and tests (managed by a dedicated laboratory system).

### Entities

The hospital management system includes the following entities:

Patients
The patients table comprises essential patient information:

patient_id: Unique ID for the patient, defined as INTEGER and designated as the PRIMARY KEY.
name: Text field (TEXT) storing the patient's name.
age: Integer field storing the patient's age.
gender: Text field to denote the patient's gender.
contact_number: Text field for the patient's contact number.
Doctors
The doctors table stores pertinent details about the hospital's medical staff:

doctor_id: Unique identifier for doctors, an INTEGER with PRIMARY KEY constraint.
name: Text field for the doctor's name.
specialization: Text field indicating the doctor's area of expertise or specialization.
contact_number: Text field to store the doctor's contact number.
All columns in the doctors table are mandatory, necessitating the NOT NULL constraint to ensure completeness.

Appointments
The appointments table manages scheduled appointments between patients and doctors:

appointment_id: Unique identifier for appointments, defined as an INTEGER with the PRIMARY KEY constraint.
patient_id: Foreign key linking to the patients table's patient_id to ensure data integrity.
doctor_id: Foreign key linking to the doctors table's doctor_id to maintain consistency.
appointment_date: Date and time for the appointment.
purpose: Text field specifying the reason or purpose of the appointment.
Medical Records
The medical_records table stores medical history and records:

record_id: Unique identifier for medical records, an INTEGER with PRIMARY KEY constraint.
patient_id: Foreign key connecting to the patients table's patient_id to associate records with specific patients.
doctor_id: Foreign key linking to the doctors table's doctor_id to identify the attending physician.
diagnosis: Text field detailing the diagnosis or medical condition.
prescription: Text field containing the prescribed treatment or medication.
Departments
The departments table manages different hospital departments:

department_id: Unique identifier for departments, defined as an INTEGER with PRIMARY KEY constraint.
name: Text field representing the department's name.
location: Text field specifying the department's physical location within the hospital.

### Relationships

The Entity Relationship Diagram (ERD) illustrating relationships between entities:

![Entity Relationship Diagram](Link_to_ERD_Image)

Explanation of relationships:
- Each patient can have multiple medical records and appointments.
- Doctors can have multiple appointments and medical records associated with them.
- Appointments are linked to specific patients and doctors.
- Medical records are associated with patients and doctors.

## Optimizations

We implemented the following optimizations:
- Indexes on frequently queried columns like `name` in Patients and Doctors tables for faster search.
- Partitioning of Medical Records based on date ranges to enhance search efficiency.

## Limitations

The limitations of our design include:
- Lack of support for financial transactions and laboratory result management.
- Potential complexity in handling collaborative treatments requiring multiple doctors' involvement.
