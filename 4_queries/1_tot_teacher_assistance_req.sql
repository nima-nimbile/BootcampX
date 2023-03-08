SELECT NAME, COUNT(assistance_requests.*) AS TOTAL_ASSISTANCES
FROM assistance_requests
JOIN teachers ON teachers.ID = teacher_id
WHERE teachers.NAME = 'Waylon Boehm'
GROUP BY NAME;