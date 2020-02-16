--CREATE SCHEMA admin;

DROP TABLE IF EXISTS admin.admins;

CREATE TABLE admin.admins (
	admin_id	INT		PRIMARY KEY	NOT NULL IDENTITY,
	username	VARCHAR(20)	NOT NULL	UNIQUE,
	password	VARCHAR(30) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL,
	first_name	VARCHAR(30) NOT NULL,
	last_name	VARCHAR(30) NOT NULL,
	email		VARCHAR(50) NOT NULL
	);

SET IDENTITY_INSERT admin.admins ON;
INSERT INTO admin.admins (admin_id, username, password, first_name, last_name, email)
VALUES (1, 'clarkj', 'MyPassw0rd!', 'Jordan', 'Clark', 'jordan.clark@oit.edu');
INSERT INTO admin.admins (admin_id, username, password, first_name, last_name, email)
VALUES (2, 'poseyd', 'MyPassw0rd!', 'Dana', 'Posey', 'dana.posey@oit.edu');
SET IDENTITY_INSERT admin.admins OFF;