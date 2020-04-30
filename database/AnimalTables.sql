

--DROP SCHEMA IF EXISTS animal;

--CREATE SCHEMA animal;

--Classes
DROP TABLE IF EXISTS animal.classes;

CREATE TABLE animal.classes (
	class_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	name		VARCHAR(60) NOT NULL
	);

--Exhibits
DROP TABLE IF EXISTS animal.exhibits;

CREATE TABLE animal.exhibits (
	exhibit_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	name		VARCHAR(60)	NOT NULL,
	description	TEXT
	);
	
--Animals
DROP TABLE IF EXISTS animal.animals;

CREATE TABLE animal.animals (
	animal_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	common_name		VARCHAR(60)	NOT NULL,
	scientific_name		VARCHAR(60)	NOT NULL,
	qr_code			BINARY,
	tags			VARCHAR(250),
	class_id		INT
		REFERENCES animal.classes (class_id),
	exhibit_id		INT
		REFERENCES animal.exhibits (exhibit_id)
	);

--Facts
DROP TABLE IF EXISTS animal.facts;

CREATE TABLE animal.facts (
	fact_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	fact		VARCHAR(MAX)	NOT NULL,
	animal_id	INT
		REFERENCES animal.animals (animal_id)
	);

--Pictures
DROP TABLE IF EXISTS animal.pictures;

CREATE TABLE animal.pictures (
	picture_id		INT	PRIMARY KEY	NOT NULL IDENTITY,
	file_name		VARCHAR(60)	NOT NULL,
	picture_url		VARCHAR(MAX)	NOT NULL,
	animal_id		INT
		REFERENCES animal.animals (animal_id)
	);

--Sounds
DROP TABLE IF EXISTS animal.sounds;

CREATE TABLE animal.sounds (
	sound_id	INT	PRIMARY KEY	NOT NULL IDENTITY,
	file_name	VARCHAR(60)	NOT NULL,
	sound_url	VARCHAR(MAX)	NOT NULL,
	animal_id	INT
		REFERENCES animal.animals (animal_id)
	);