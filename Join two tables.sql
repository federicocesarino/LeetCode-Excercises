# Write your MySQL query statement below
SELECT
  firstName,
  lastName,
  
  CASE
    WHEN city IS NULL THEN NULL
    ELSE city END AS city,
  
  CASE
  WHEN state IS NULL THEN NULL
  ELSE state END AS state
FROM Person
LEFT JOIN Address
USING (personId)
