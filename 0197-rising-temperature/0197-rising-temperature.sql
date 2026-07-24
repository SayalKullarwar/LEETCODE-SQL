# Write your MySQL query statement below
SELECT i1.id
FROM WEATHER i1
JOIN WEATHER i2
ON DATEDIFF(i2.recorddate, i1.recorddate) = -1
WHERE i1.temperature > i2.temperature;
