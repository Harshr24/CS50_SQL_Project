
-- *** The Lost Letter ***
SELECT * FROM addresses WHERE id IN (SELECT address_id FROM scans WHERE package_id IN (SELECT id FROM packages WHERE from_address_id = (SELECT id FROM addresses WHERE address = '900 Somerville Avenue' ) AND to_address_id = (SELECT id FROM addresses WHERE address LIKE '2 Fin%' )));
-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

