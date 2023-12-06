CREATE TABLE triplets (sentence_id INTEGER, start_char INTEGER, length INTEGER);
INSERT INTO triplets (sentence_id, start_char, length) VALUES
(14,98,4), (114,3,5), (618,72,9), (630,7,3), (932,12,5), (2230,50,7), (2346,44,10), (3041,14,5);



DROP VIEW IF EXISTS "message";
CREATE VIEW "message" AS
SELECT trim(substr(sentence, 2, 4)) AS phrase FROM sentences WHERE id = 14
UNION SELECT trim(substr(sentence, 98, 3)) AS phrase FROM sentences WHERE id = 98
UNION SELECT trim(substr(sentence, 4, 5)) AS phrase FROM sentences WHERE id = 4
UNION SELECT trim(substr(sentence, 114, 3)) AS phrase FROM sentences WHERE id = 114
UNION SELECT trim(substr(sentence, 3, 5)) AS phrase FROM sentences WHERE id = 3
UNION SELECT trim(substr(sentence, 5, 4)) AS phrase FROM sentences WHERE id = 5
UNION SELECT trim(substr(sentence, 618, 9)) AS phrase FROM sentences WHERE id = 618
UNION SELECT trim(substr(sentence, 72, 7)) AS phrase FROM sentences WHERE id = 72
UNION SELECT trim(substr(sentence, 9, 3)) AS phrase FROM sentences WHERE id = 9
UNION SELECT trim(substr(sentence, 630, 7)) AS phrase FROM sentences WHERE id = 630
UNION SELECT trim(substr(sentence, 7, 3)) AS phrase FROM sentences WHERE id = 7
UNION SELECT trim(substr(sentence, 932, 12)) AS phrase FROM sentences WHERE id = 932
UNION SELECT trim(substr(sentence, 12, 5)) AS phrase FROM sentences WHERE id = 12
UNION SELECT trim(substr(sentence, 2230, 50)) AS phrase FROM sentences WHERE id = 2230
UNION SELECT trim(substr(sentence, 50, 7)) AS phrase FROM sentences WHERE id = 50
UNION SELECT trim(substr(sentence, 2346, 44)) AS phrase FROM sentences WHERE id = 2346
UNION SELECT trim(substr(sentence, 44, 10)) AS phrase FROM sentences WHERE id = 44
UNION SELECT trim(substr(sentence, 3041, 14)) AS phrase FROM sentences WHERE id = 3041
UNION SELECT trim(substr(sentence, 14, 5)) AS phrase FROM sentences WHERE id = 14;
