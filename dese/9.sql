SELECT d.name,e.pupils FROM districts d JOIN expenditures e ON e.district_id = d.id ORDER BY pupils ASC limit 1;
