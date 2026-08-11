# Write your MySQL query statement below
SELECT employee_id
FROM employees e
WHERE salary < 30000 AND manager_id IS NOT NULL
AND NOT EXISTS (
    SELECT 1 
    FROM employees m
    WHERE m.employee_id = e.manager_id
)
ORDER BY employee_id 