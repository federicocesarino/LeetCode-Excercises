# Write your MySQL query statement below
DELETE a
FROM Person AS a
INNER JOIN Person AS b
ON a.email = b.email
AND a.id > b.id