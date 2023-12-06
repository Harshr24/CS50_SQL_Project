-- Index on enrollments table for student_id column
CREATE INDEX idx_enrollments_student_id ON enrollments(student_id);

-- Index on enrollments table for course_id column
CREATE INDEX idx_enrollments_course_id ON enrollments(course_id);

-- Index on courses table for department, number, and semester columns
CREATE INDEX idx_courses_dept_num_semester ON courses(department, number, semester);

-- Index on courses table for title column
CREATE INDEX idx_courses_title ON courses(title);

-- Index on requirements table for name column
CREATE INDEX idx_requirements_name ON requirements(name);

-- Index on satisfies table for course_id column
CREATE INDEX idx_satisfies_course_id ON satisfies(course_id);

-- Index on satisfies table for requirement_id column
CREATE INDEX idx_satisfies_requirement_id ON satisfies(requirement_id);
