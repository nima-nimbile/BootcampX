SELECT students.name AS STUDENT, sum(assignment_submissions.duration)/count(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN STUDENTS ON STUDENTS.ID = student_id
WHERE STUDENTS.END_DATE IS NULL
GROUP BY STUDENT
ORDER BY average_assignment_duration DESC