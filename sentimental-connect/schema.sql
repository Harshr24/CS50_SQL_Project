-- Create LinkedIn database
CREATE DATABASE IF NOT EXISTS linkedin_db;
USE linkedin_db;

-- Table for Users
CREATE TABLE Users (user_id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, username VARCHAR(50) UNIQUE NOT NULL, password VARCHAR(128) NOT NULL -- Assuming hashed passwords of up to 128 characters);

-- Table for Schools
CREATE TABLE Schools (school_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, school_type ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL, location VARCHAR(100) NOT NULL, founded_year INT NOT NULL);

-- Table for Companies
CREATE TABLE Companies (company_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, industry ENUM('Technology', 'Education', 'Business') NOT NULL, location VARCHAR(100) NOT NULL);

-- Table for User-School connections
CREATE TABLE UserSchoolConnections (user_school_id INT AUTO_INCREMENT PRIMARY KEY, user_id INT, school_id INT, start_date DATE NOT NULL, end_date DATE, degree_type VARCHAR(20), FOREIGN KEY (user_id) REFERENCES Users(user_id), FOREIGN KEY (school_id) REFERENCES Schools(school_id));

-- Table for User-Company connections
CREATE TABLE UserCompanyConnections (user_company_id INT AUTO_INCREMENT PRIMARY KEY, user_id INT, company_id INT, title VARCHAR(100), start_date DATE NOT NULL, end_date DATE, FOREIGN KEY (user_id) REFERENCES Users(user_id), FOREIGN KEY (company_id) REFERENCES Companies(company_id));

-- Sample Data Insertion
INSERT INTO Users (first_name, last_name, username, password) VALUES ('Claudine', 'Gay', 'claudine', 'password'), ('Reid', 'Hoffman', 'reid', 'password');

INSERT INTO Schools (name, school_type, location, founded_year) VALUES ('Harvard University', 'Higher Education', 'Cambridge, Massachusetts', 1636);

INSERT INTO Companies (name, industry, location) VALUES
    ('LinkedIn', 'Technology', 'Sunnyvale, California');

INSERT INTO UserSchoolConnections (user_id, school_id, start_date, end_date, degree_type) VALUES
    (1, 1, '1993-01-01', '1998-12-31', 'PhD');

INSERT INTO UserCompanyConnections (user_id, company_id, title, start_date, end_date) VALUES
    (2, 1, 'CEO and Chairman', '2003-01-01', '2007-02-01');
