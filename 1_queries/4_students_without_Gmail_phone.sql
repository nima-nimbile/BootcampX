SELECT name, email, id, cohort_id
FROM students
WHERE EMAIL <> 'GMAIL' AND PHONE IS NULL;