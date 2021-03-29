/* 
A student's end date will be NULL when they are currently enrolled in Bootcamp.
Get all of the students currently enrolled.
*/

SELECT id, name, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;
