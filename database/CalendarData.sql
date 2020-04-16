SET IDENTITY_INSERT calendar.events ON;

INSERT calendar.events (event_id, title)
VALUES (1, 'World Frog Day Prince & Princess Party');
INSERT calendar.events (event_id, title)
VALUES (2, 'Pub Talk: Up Close and Personal with Cougars and Bears');
INSERT calendar.events (event_id, title)
VALUES (3, 'International Beaver Day');
INSERT calendar.events (event_id, title)
VALUES (4, 'Animal Activities');
INSERT calendar.events (event_id, title)
VALUES (5, 'Pub Talk: True Tall Tales from Tanzania');
INSERT calendar.events (event_id, title)
VALUES (6, 'Rabbit Romp');
INSERT calendar.events (event_id, title)
VALUES (7, 'Second Tuesdays at the Oregon Zoo');
INSERT calendar.events (event_id, title)
VALUES (8, 'Party for the Planet');
INSERT calendar.events (event_id, title)
VALUES (9, 'Nature Night: Exploring the Mysteries of Coyotes in the City');
INSERT calendar.events (event_id, title)
VALUES (10, 'Pika Watch Training');


SET IDENTITY_INSERT calendar.events OFF;



INSERT calendar.details (event_id, date, time, duration, description)
VALUES (1, '03-21-2020', '9:30 AM', 5.5, 'Frog activities and meet and greets with royalty at the '
+ 'Nature Exploration Station near tigers');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (1, '03-21-2020', '11:30 AM', null, 'Up-close experiences with ambassador animals');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (1, '03-21-2020', '1:00 PM', null, 'Up-close experiences with ambassador animals');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (1, '03-21-2020', '12:00 PM', null, 'Prince and princess parade begins');

INSERT calendar.details (event_id, date, time, duration, description)
VALUES (6, '04-11-2020', '8:30 AM', null, 'Zoo open to members');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (6, '04-11-2020', '9:00 AM', null, 'Zoo gates open');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (6, '04-11-2020', '9:00 AM', 5.5, 'Kids can get their photos taken with the Easter Bunny at Turtle Terrace and there will be education/activity/coloring stations at Elephant Plaza');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (6, '04-11-2020', '9:30 AM', 5, 'Candy hunts and coloring activities at Elephant Lands and candy/prize hunts on the concert lawn');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (6, '04-11-2020', '11:30 AM', 1.5, 'Ambassador animal meet and greets at Elephant Plaza');

INSERT calendar.details (event_id, date, time, duration, description)
VALUES (8, '04-25-2020', '9:30 AM', 5.5, 'Visit educational and activity booths and get your passport stamped');
INSERT calendar.details (event_id, date, time, duration, description)
VALUES (8, '04-25-2020', '11:30 AM', 1.5, 'Up close experiences with ambassador animals at Elephant Plaza');

INSERT calendar.details (event_id, date, time, duration, description)
VALUES (9, '04-28-2020', '7:00 PM', 2, 'Don''t miss your chance to hear a fascinating story about urban wildlife from a world-renowned expert!');

INSERT calendar.details (event_id, date, time, duration, description)
VALUES (10, '05-5-2020', '7:00 PM', 2, 'Cascades Pika Watch engages community scientists to locate and map pika populations in Oregon');

