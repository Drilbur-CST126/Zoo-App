CREATE PROC spCheckAdminCred @username varchar(20), @password varchar(30) 
as
SELECT COUNT(*) AS count
FROM admin.admins 
WHERE username = @username AND password = @password;