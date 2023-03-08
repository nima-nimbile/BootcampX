SELECT STUDENTS.NAME, COUNT(assistance_requests.*) AS TOTAL_ASSISTANCES
FROM assistance_requests
JOIN students ON students.ID = student_id
WHERE students.NAME = 'Elliot Dickinson'
GROUP BY name;