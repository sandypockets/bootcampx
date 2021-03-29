/* 
Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.
Expected Result:

 cohort | total_submissions 
--------+-------------------
 SEP24  |              9328
 JUN04  |              8030
 APR09  |              7935
 NOV19  |              7231
 JUL02  |              5868
...
(11 rows)
*/

SELECT cohorts.name AS cohort, COUNT(students.name) AS total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY COUNT(students.name) DESC;