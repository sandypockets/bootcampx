/*
Get the total amount of time that all students from a specific cohort have spent on all assignments.

This should work for any cohort but use FEB12 for now.
Select only the total amount of time as a single column.
You can write as many JOIN statements as you need in a single query.
*/

SELECT SUM(duration) as total_cohort_duration
FROM assignment_submissions
JOIN students
ON students.id = assignment_submissions.student_id
JOIN cohorts
ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';