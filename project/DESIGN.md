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

## Representation

### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
* What attributes will those entities have?
* Why did you choose the types you did?
* Why did you choose the constraints you did?

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?

## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
* What might your database not be able to represent very well?
