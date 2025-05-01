CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,SELECT day, sum(assignment_submissions) as total_assignment
FROM assignments  
GROUP By day
ORDER BY day;
  start_date DATE,
  end_date DATE
);


CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL, 
  name VARCHAR(255) NOT NULL, 
  email VARCHAR(255),
  phone VARCHAR(255),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
  );