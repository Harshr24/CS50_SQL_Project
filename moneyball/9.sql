SELECT t.name, ROUND(AVG(s.salary), 2) AS "average salary" FROM salaries s JOIN teams t ON s.team_id = t.id WHERE s.year = 2001 GROUP BY t.name ORDER BY "average salary" ASC LIMIT 5;
