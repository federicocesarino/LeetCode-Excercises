# Write your MySQL query statement below
WITH managers AS (
SELECT
    id,
    name,
    salary
FROM Employee),

collaborators AS (
SELECT
    managerID AS id,
    name,
    salary
FROM Employee
WHERE managerID IS NOT NULL)

SELECT
    c.name AS Employee
FROM collaborators AS c
INNER JOIN managers AS m
USING (id)
WHERE c.salary > m.salary