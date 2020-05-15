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

CREATE PROC spExhibitExists @name varchar(60)
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

CREATE PROC spGetEventDetails @event_id int
as
SELECT detail_id as ID, CONVERT(VARCHAR(8), date, 1) as Date, FORMAT(time, N'hh:mm tt') as Time, duration as Duration, description as Description
FROM calendar.details
WHERE event_id = @event_id;

CREATE PROC spGetEvents
as
select e.event_id as ID, e.title as Title, convert(varchar(8), min(d.date), 1) as 'Start Date', convert(varchar(8), max(d.date), 1) as 'End Date'
from calendar.events as e
left join calendar.details as d
on e.event_id = d.event_id
group by e.event_id, e.title;

CREATE PROC spEditEvent @event_id int, @title varchar(250)
as
UPDATE calendar.events
SET title = @title
WHERE event_id = @event_id;


CREATE PROC spAddNewEvent @title varchar(250)
as
INSERT INTO calendar.events (title)
VALUES (@title);

CREATE PROC spAddNewDetail @event_id int, @date datetime, @time datetime, @duration decimal, @description varchar(250)
as
INSERT INTO calendar.details (event_id, date, time, duration, description)
VALUES (@event_id, @date, @time, @duration, @description);

CREATE PROC spLastEventId
as
select max(event_id) as last from calendar.events;

CREATE PROC spEditDetail @detail_id int, @date datetime, @time datetime, @duration decimal, @description varchar(250)
as
UPDATE calendar.details
SET date = @date, time = @time, duration = @duration, description = @description
WHERE detail_id = @detail_id;

CREATE PROC spDeleteDetail @detail_id int
as
DELETE FROM calendar.details
WHERE detail_id = @detail_id;
