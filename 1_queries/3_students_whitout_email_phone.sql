SELECT name, iD, cohort_id
FROM students
WHERE phone IS NULL OR email IS NULL;