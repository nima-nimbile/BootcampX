SELECT STUDENTS.NAME AS STUDENT, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM assignments
JOIN assignment_submissions ON assignments.ID = assignment_ID
JOIN STUDENTS ON STUDENTS.ID = student_id
WHERE STUDENTS.END_DATE IS NULL
GROUP BY STUDENT
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_estimated_duration;