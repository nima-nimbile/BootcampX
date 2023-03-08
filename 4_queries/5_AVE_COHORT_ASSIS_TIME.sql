SELECT COHORTS.NAME, AVG(completed_at - started_at) AS average_assistance_time
FROM COHORTS
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
GROUP BY COHORTS.NAME
ORDER BY average_assistance_time ASC;