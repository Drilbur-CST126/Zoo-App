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