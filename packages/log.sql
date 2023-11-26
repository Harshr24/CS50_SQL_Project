
-- *** The Lost Letter ***
SELECT * FROM addresses WHERE id IN (SELECT address_id FROM scans WHERE package_id = (SELECT id FROM packages WHERE from_address_id = (SELECT id FROM addresses WHERE address = '900 Somerville Avenue') AND to_address_id = (SELECT id FROM addresses WHERE address LIKE '2 Fin%')) AND action = 'Drop');
-- *** The Devious Delivery ***
SELECT * FROM (SELECT * FROM (SELECT * FROM scans WHERE package_id IN (SELECT id FROM packages WHERE from_address_id IS NULL) AND action='Drop') AS scans_result JOIN (SELECT * FROM packages WHERE from_address_id IS NULL) AS packages_result ON scans_result.package_id = packages_result.id) AS sp JOIN (SELECT * FROM addresses WHERE id = (SELECT address_id FROM scans WHERE package_id = (SELECT id FROM packages WHERE from_address_id IS NULL) AND action='Drop')) AS a ON sp.address_id = a.id;
-- *** The Forgotten Gift ***

