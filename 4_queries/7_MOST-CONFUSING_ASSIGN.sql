SELECT ASSIGNMENTS.ID, ASSIGNMENTS.NAME, ASSIGNMENTS.day, ASSIGNMENTS.CHAPTER,
COUNT(assistance_requests.*) AS TOTAL_REQUESTS
FROM ASSIGNMENTS
JOIN assistance_requests ON ASSIGNMENTS.ID = ASSIGNMENT_ID
GROUP BY ASSIGNMENTS.ID
ORDER BY TOTAL_REQUESTS DESC;