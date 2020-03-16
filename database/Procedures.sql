CREATE PROC spCheckAdminCred @username varchar(20), @password varchar(30) 
as
SELECT *
FROM admin.admins 
WHERE username = @username AND password = @password;

CREATE PROC spGetAdmins
as
SELECT admin_id as ID, (last_name + ',  ' + first_name) as Name, email as 'E-mail'
FROM admin.admins
ORDER BY last_name;

CREATE PROC spUsernameExists @username varchar(20)
as
SELECT *
FROM admin.admins 
WHERE username = @username;

CREATE PROC spAddNewAdmin @username varchar(20), @first_name varchar(30), @last_name varchar(30), @email varchar(50), @password varchar(30)
as
INSERT INTO admin.admins (username, first_name, last_name, email, password)
VALUES (@username, @first_name, @last_name, @email, @password);

CREATE PROC spDeleteAdmin @admin_id int
as
DELETE FROM admin.admins
WHERE admin_id = @admin_id;


CREATE PROC spGetExhibits
as
SELECT exhibit_id as 'ID', name as 'Name', description as 'Description'
FROM animal.exhibits
ORDER BY CAST(name as VARCHAR(60));

CREATE PROC spDeleteExhibit @exhibit_id int
as
DELETE FROM animal.exhibits
WHERE exhibit_id = @exhibit_id;

CREATE PROC spExhibitExists @name varchar
as
SELECT *
FROM animal.exhibits 
WHERE CAST(name AS VARCHAR(60))= @name;

CREATE PROC spAddNewExhibit @name text, @description text
as
INSERT INTO animal.exhibits (name, description)
VALUES (@name, @description);

CREATE PROC spEditExhibit @exhibit_id int, @name text, @description text
as
UPDATE animal.exhibits
SET name = @name, description = @description
WHERE exhibit_id = @exhibit_id;

CREATE PROC spGetExhibit @exhibit_id int
as
SELECT *
FROM animal.exhibits
WHERE exhibit_id = @exhibit_id;