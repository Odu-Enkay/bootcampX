SELECT name,id, email, cohort_id
FROM students
WHERE email NOT ILIKE '%gmail.com%'
AND phone is NULL;
