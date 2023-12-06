DROP VIEW IF EXISTS "message";
CREATE VIEW "message" AS
SELECT replace(substr(sentence, 2, 4) AS phrase FROM sentences WHERE id = 14
UNION SELECT replace(substr(sentence, 98, 3) AS phrase FROM sentences WHERE id = 98
UNION SELECT replace(substr(sentence, 4, 5) AS phrase FROM sentences WHERE id = 4
UNION SELECT replace(substr(sentence, 114, 3) AS phrase FROM sentences WHERE id = 114
UNION SELECT replace(substr(sentence, 3, 5) AS phrase FROM sentences WHERE id = 3
UNION SELECT replace(substr(sentence, 5, 4) AS phrase FROM sentences WHERE id = 5
UNION SELECT replace(substr(sentence, 618, 9) AS phrase FROM sentences WHERE id = 618
UNION SELECT replace(substr(sentence, 72, 7) AS phrase FROM sentences WHERE id = 72
UNION SELECT replace(substr(sentence, 9, 3) AS phrase FROM sentences WHERE id = 9
UNION SELECT replace(substr(sentence, 630, 7) AS phrase FROM sentences WHERE id = 630
UNION SELECT replace(substr(sentence, 7, 3) AS phrase FROM sentences WHERE id = 7
UNION SELECT replace(substr(sentence, 932, 12) AS phrase FROM sentences WHERE id = 932
UNION SELECT replace(substr(sentence, 12, 5) AS phrase FROM sentences WHERE id = 12
UNION SELECT replace(substr(sentence, 2230, 50) AS phrase FROM sentences WHERE id = 2230
UNION SELECT replace(substr(sentence, 50, 7) AS phrase FROM sentences WHERE id = 50
UNION SELECT replace(substr(sentence, 2346, 44) AS phrase FROM sentences WHERE id = 2346
UNION SELECT replace(substr(sentence, 44, 10) AS phrase FROM sentences WHERE id = 44
UNION SELECT replace(substr(sentence, 3041, 14) AS phrase FROM sentences WHERE id = 3041
UNION SELECT replace(substr(sentence, 14, 5) AS phrase FROM sentences WHERE id = 14;
