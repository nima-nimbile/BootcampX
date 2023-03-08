SELECT teachers.NAME AS TEACHER, students.NAME AS STUDENT, assignments.NAME AS assignment, 
SUM(completed_at - started_at) AS DURATION
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN STUDENTS ON student_id = STUDENTS.id
JOIN assignments ON assignments.ID = assignment_id
GROUP BY TEACHER, student, assignment, DURATION
ORDER BY DURATION;
