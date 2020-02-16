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

