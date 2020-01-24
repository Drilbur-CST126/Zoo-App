/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [class_id]
      ,[name]
  FROM [ZooCompanion].[animal].[classes]

  UPDATE animal.classes
  SET name = 'Arachnida'
  WHERE class_id = 7