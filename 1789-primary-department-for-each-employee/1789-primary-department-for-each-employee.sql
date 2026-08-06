# Write your MySQL query statement below
SELECT e1.employee_id, e1.department_id
FROM employee e1
WHERE primary_flag = 'Y' OR (SELECT COUNT(*) FROM employee e2
                             WHERE e2.employee_id = e1.employee_id) = 1