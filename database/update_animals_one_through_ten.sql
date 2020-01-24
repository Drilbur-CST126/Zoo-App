/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [animal_id]
      ,[common_name]
      ,[scientific_name]
      ,[qr_code]
      ,[tags]
      ,[class_id]
      ,[exhibit_id]
  FROM [ZooCompanion].[animal].[animals]

  UPDATE animal.animals
  SET exhibit_id = 1
  WHERE animal_id = 1

  UPDATE animal.animals
  SET exhibit_id = 1
  WHERE animal_id = 2

    UPDATE animal.animals
  SET exhibit_id = 1
  WHERE animal_id = 3

    UPDATE animal.animals
  SET exhibit_id = 21
  WHERE animal_id = 4

    UPDATE animal.animals
  SET exhibit_id = 21
  WHERE animal_id = 5

UPDATE animal.animals
SET exhibit_id = 21
WHERE animal_id = 6

  UPDATE animal.animals
  SET exhibit_id = 1
  WHERE animal_id = 7

    UPDATE animal.animals
  SET exhibit_id = 3
  WHERE animal_id = 8

    UPDATE animal.animals
  SET exhibit_id = 1
  WHERE animal_id = 9

    UPDATE animal.animals
  SET exhibit_id = 8
  WHERE animal_id = 10