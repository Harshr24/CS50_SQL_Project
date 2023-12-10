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

The chosen entities for representation in the database are:

- **Patients**: Attributes include `patient_id`, `name`, `age`, `gender`, `contact_number`, etc.
- **Doctors**: Attributes include `doctor_id`, `name`, `specialization`, `contact_number`, etc.
- **Appointments**: Attributes include `appointment_id`, `patient_id`, `doctor_id`, `appointment_date`, `purpose`, etc.
- **Medical Records**: Attributes include `record_id`, `patient_id`, `doctor_id`, `diagnosis`, `prescription`, etc.
- **Departments**: Attributes include `department_id`, `name`, `location`, etc.

### Relationships

The Entity Relationship Diagram (ERD) illustrating relationships between entities:

![Entity Relationship Diagram](Link_to_ERD_Image)

Explanation of relationships:
- Each patient can have multiple medical records and appointments.
- Doctors can have multiple appointments and medical records associated with them.
- Appointments are linked to specific patients and doctors.
- Medical records are associated with patients and doctors.

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?

## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
* What might your database not be able to represent very well?
