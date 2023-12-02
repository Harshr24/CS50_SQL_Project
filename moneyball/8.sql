SELECT s.salary FROM salaries s JOIN performances p ON s.player_id = p.player_id WHERE p.year = 2001 AND p.HR = (SELECT MAX(HR) FROM performances WHERE year = 2001) AND s.year = 2001;
