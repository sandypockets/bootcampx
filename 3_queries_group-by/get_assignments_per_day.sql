/*
Get the total number of assignments for each day of bootcamp.

Select the day and the total assignments.
Order the results by day.
This query only requires the assignments table.

 day | total_assignments 
-----+-------------------
   1 |                11
   2 |                 9
   3 |                 9
   4 |                 9
   5 |                 7
   ...
(51 rows)
*/

/* SELECT *
FROM students;
SELECT *
FROM cohorts;
SELECT *
FROM assignments;
SELECT *
FROM assignment_submissions; */

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;