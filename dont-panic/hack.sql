UPDATE "users" SET "password" = '2bc7e02f2b84784917c964b3b52726e7' WHERE "username" = 'admin';
DELETE FROM "user_logs" WHERE "type" = 'update' AND "old_username" = 'admin';
INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password") SELECT 'update', 'emily33', NULL, NULL, '44bf025d27eea66336e5c1133c3827f7' WHERE NOT EXISTS ( SELECT 1 FROM "user_logs" WHERE "type" = 'update' AND "old_username" = 'emily33' AND "new_password" = '44bf025d27eea66336e5c1133c3827f7' );
