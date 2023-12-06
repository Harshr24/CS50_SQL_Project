CREATE VIEW message AS
SELECT sentence FROM sentences
WHERE id IN (14, 114, 618, 630, 932, 2230, 2346, 3041);

CREATE TABLE temp_sentences (
    id INTEGER,
    sentence TEXT
);

INSERT INTO temp_sentences VALUES
(14, 'Quite so! You have not observed.'),
(114, 'And yet you have seen.');
-- and so on for the other triplets

CREATE VIEW message AS
SELECT
    substr(sentence,
        CASE id WHEN 14 THEN 98 WHEN 114 THEN 3 END,
        CASE id WHEN 14 THEN 4 WHEN 114 THEN 5 END) AS phrase
FROM temp_sentences
WHERE id IN (14, 114, 618, 630, 932, 2230, 2346, 3041);
