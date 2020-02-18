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




