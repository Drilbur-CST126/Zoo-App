--DROP SCHEMA IF EXISTS calendar;

--CREATE SCHEMA calendar;

-- Events
DROP TABLE IF EXISTS calendar.events;

CREATE TABLE calendar.events (
	event_id	INT		PRIMARY KEY IDENTITY,
	title   	VARCHAR(250) NOT NULL
	);

--Event Details
DROP TABLE IF EXISTS calendar.details;

CREATE TABLE calendar.details (
	detail_id	INT		PRIMARY KEY IDENTITY,
	event_id	INT 	REFERENCES calendar.events (event_id),
	date		DATE	NOT NULL,
	time		TIME	NOT NULL,
    	duration    	DECIMAL(3,2),
	description	TEXT
	);