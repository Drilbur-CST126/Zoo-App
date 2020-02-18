USE master;
GO

IF  DB_ID('ZooCompanion') IS NOT NULL
    DROP DATABASE ZooCompanion;
GO

CREATE DATABASE ZooCompanion;

	
	

 

/*SELECT * FROM classes;

SELECT * FROM exhibits;

SELECT * FROM animals;

SELECT * FROM facts;

SELECT a.animal_id, a.common_name, a.scientific_name, c.name AS class, e.name AS exhibit
FROM animals a JOIN classes c
ON a.class_id = c.class_id
JOIN exhibits e
ON a.exhibit_id = e.exhibit_id;*/

