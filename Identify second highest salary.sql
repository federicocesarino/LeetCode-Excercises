# Write your MySQL query statement below
WITH ranked AS (
  SELECT
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS r
  FROM Employee
)

SELECT
  MAX(salary) AS SecondHighestSalary
FROM ranked
WHERE r = 2;
