SELECT d.name,count(e.pupils) FROM districts d JOIN expenditures e ON e.district_id = d.id;
