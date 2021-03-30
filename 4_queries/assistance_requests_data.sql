/* Each assistance request is related to a bunch of data like
a teacher, student, assignment, and more. We want to be able to see
all important data about an assistance request.

Get important data about each assistance request.

Select the teacher's name, student's name, assignment's name, and the
duration of each assistance request.

Subtract completed_at by started_at to find the duration.

Order by the duration of the request.
Expected Result:

      teacher       |         student          |    assignment    | duration 
--------------------+--------------------------+------------------+----------
 Helmer Rodriguez   | Maximillian Pfannerstill | Expedita officia | 00:02:45
 Roberto Towne      | Vivien Mosciski          | Ea totam iste    | 00:02:45
 Georgiana Fahey    | Gene Carter              | Ut fuga          | 00:02:45
 Cheyanne Powlowski | Vivien Mosciski          | Eum eaque        | 00:02:45
 Roberto Towne      | Maximillia Willms        | Quibusdam est    | 00:03:00
(26299 rows) */

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
