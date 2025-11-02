# Write your MySQL query statement below
SELECT
a.id
FROM Weather a
JOIN Weather b
ON a.id = b.id + 1
WHERE a.recordDate > b.recordDate
AND a.temperature > b.temperature