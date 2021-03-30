/* We need to be able to see the average duration of a single assistance request for each cohort.

Get the average duration of assistance requests for each cohort.

Select the cohort's name and the average assistance request time.
Order the results from shortest average to longest.
Expected Result:

 name  | average_assistance_time 
-------+-------------------------
 SEP24 | 00:13:23.071576
 JUL30 | 00:13:23.956547
 FEB12 | 00:13:42.66022
 JUN04 | 00:13:45.974562
 MAY07 | 00:13:58.745754
...
(11 rows) */

SELECT cohorts.name AS name, (SUM(assistance_requests.completed_at - assistance_requests.started_at) / COUNT(students.id)) AS average_assistance_time
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;