SELECT ROUND(AVG(height), 2) AS "Avg_Ht" FROM players WHERE bats = 'R' AND throws = 'L' AND debut >= '2000-01-01'  ORDER BY "Avg_Ht" DESC;
