# Write your MySQL query statement below
SELECT d.name as department, e.name as employee, e.salary as salary
FROM employee e
JOIN department d
ON e.departmentid = d.id
WHERE e.salary = (SELECT MAX(e2.salary) FROM employee e2 
                    WHERE e2.departmentid = e.departmentid)