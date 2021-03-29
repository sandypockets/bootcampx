/* 
Expected Result:

day | total_assignments 
-----+-------------------
   1 |                11
   9 |                12
  22 |                10
  23 |                10
  24 |                10
...
(15 rows)
 */

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING count(*) >= 10
ORDER BY assignments.day;