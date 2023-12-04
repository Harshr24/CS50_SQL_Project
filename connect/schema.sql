CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT, first_name TEXT NOT NULL, last_name TEXT NOT NULL, username TEXT UNIQUE NOT NULL, password TEXT NOT NULL);
CREATE TABLE schools (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE NOT NULL, type TEXT NOT NULL, location TEXT NOT NULL, year_founded INTEGER NOT NULL);
CREATE TABLE companies (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE NOT NULL, industry TEXT NOT NULL, location TEXT NOT NULL);
CREATE TABLE user_schools (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL, school_id INTEGER NOT NULL, start_date DATE NOT NULL, end_date DATE, degree TEXT NOT NULL, FOREIGN KEY (user_id) REFERENCES users (id), FOREIGN KEY (school_id) REFERENCES schools (id));
CREATE TABLE user_companies (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL, company_id INTEGER NOT NULL, start_date DATE NOT NULL, end_date DATE, title TEXT NOT NULL, FOREIGN KEY (user_id) REFERENCES users (id), FOREIGN KEY (company_id) REFERENCES companies (id));

INSERT INTO users (first_name, last_name, username, password) VALUES ('Claudine', 'Gay', 'claudine', 'password');
INSERT INTO users (first_name, last_name, username, password) VALUES ('Reid', 'Hoffman', 'reid', 'password');
INSERT INTO schools (name, type, location, year_founded) VALUES ('Harvard University', 'University', 'Cambridge, Massachusetts', 1636);
INSERT INTO companies (name, industry, location) VALUES ('LinkedIn', 'Technology', 'Sunnyvale, California');
INSERT INTO user_schools (user_id, school_id, start_date, end_date, degree) VALUES (1, 1, '1993-01-01', '1998-12-31', 'PhD');
INSERT INTO user_companies (user_id, company_id, start_date, end_date, title) VALUES (2, 1, '2003-01-01', '2007-02-01', 'CEO and Chairman');