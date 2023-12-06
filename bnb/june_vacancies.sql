CREATE VIEW june_vacancies AS
SELECT l.id, l.property_type, l.host_name, COUNT(a.date) AS days_vacant FROM listings l
LEFT JOIN availabilities a ON l.id = a.listing_id WHERE strftime('%Y', a.date) = '2023' AND strftime('%m', a.date) = '06' AND a.available = 'TRUE'
GROUP BY l.id, l.property_type, l.host_name;
