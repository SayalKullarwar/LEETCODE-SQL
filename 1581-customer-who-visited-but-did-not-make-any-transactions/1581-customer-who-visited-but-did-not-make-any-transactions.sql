# Write your MySQL query statement below
SELECT v.customer_id, COUNT(V.VISIT_id) AS count_no_trans
FROM visits v
LEFT JOIN transactions t
ON v.visit_id = t.visit_id
WHERE T.visit_id IS NULL 
GROUP BY v.CUSTOMER_id 
