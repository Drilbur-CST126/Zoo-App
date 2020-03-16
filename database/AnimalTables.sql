USE ZooCompanion;

--DROP SCHEMA IF EXISTS animal;

--CREATE SCHEMA animal;

--Classes
DROP TABLE IF EXISTS animal.classes;

CREATE TABLE animal.classes (
	class_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	name		TEXT	NOT NULL
	);

--Origins (NOT BEING USED CURRENTLY)
/*DROP TABLE IF EXISTS animal.origins;

CREATE TABLE origins (
	origin_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	region		TEXT	NOT NULL,
	description	TEXT
	);*/

--Exhibits
DROP TABLE IF EXISTS animal.exhibits;

CREATE TABLE animal.exhibits (
	exhibit_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	name		TEXT	NOT NULL,
	description	TEXT
	);
	
--Animals
DROP TABLE IF EXISTS animal.animals;

CREATE TABLE animal.animals (
	animal_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	common_name		TEXT	NOT NULL,
	scientific_name	TEXT	NOT NULL,
	qr_code			BINARY,
	tags			TEXT,
	class_id		INT
		REFERENCES animal.classes (class_id),
	exhibit_id		INT
		REFERENCES animal.exhibits (exhibit_id)
	);

--Facts
DROP TABLE IF EXISTS animal.facts;

CREATE TABLE animal.facts (
	fact_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	fact		TEXT	NOT NULL,
	animal_id	INT
		REFERENCES animal.animals (animal_id)
	);

--Pictures
DROP TABLE IF EXISTS animal.pictures;

CREATE TABLE animal.pictures (
	picture_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	file_name		TEXT	NOT NULL,
	picture_file	BINARY	NOT NULL,
	animal_id		INT
		REFERENCES animal.animals (animal_id)
	);


--Sounds
DROP TABLE IF EXISTS animal.sounds;

CREATE TABLE animal.sounds (
	sound_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	file_name	TEXT	NOT NULL,
	sound_file	BINARY	NOT NULL,
	animal_id	INT
		REFERENCES animal.animals (animal_id)
	);