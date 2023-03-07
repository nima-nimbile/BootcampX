SELECT sum(ASSIGNMENT_SUBMISSIONS.DURATION) as total_duration
FROM ASSIGNMENT_SUBMISSIONS
JOIN students ON students.id = student_id
where students.name = 'Ibrahim Schimmel';