/* Get the total number of assistance_requests for a student.

Select the student's name and the total assistance requests.
Since this query needs to work with any specific student name, 
use 'Elliot Dickinson' for the student's name here. 

 total_assistances |       name       
-------------------+------------------
               138 | Elliot Dickinson
(1 row)
*/

SELECT COUNT(assistance_requests.id) AS total_assistances, students.name AS name
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;