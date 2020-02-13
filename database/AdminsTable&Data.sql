--CREATE SCHEMA admin;

DROP TABLE IF EXISTS admin.admins;

CREATE TABLE admin.admins (
	admin_id	INT		PRIMARY KEY,
	username	VARCHAR(20)	NOT NULL,
	password	VARCHAR(30) NOT NULL,
	first_name	VARCHAR(30) NOT NULL,
	last_name	VARCHAR(30) NOT NULL,
	email		VARCHAR(50) NOT NULL
	);

INSERT INTO admin.admins (admin_id, username, password, first_name, last_name, email)
VALUES (1, 'clarkj', 'MyPassw0rd!', 'Jordan', 'Clark', 'jordan.clark@oit.edu');
INSERT INTO admin.admins (admin_id, username, password, first_name, last_name, email)
VALUES (2, 'poseyd', 'MyPassw0rd!', 'Dana', 'Posey', 'dana.posey@oit.edu');
