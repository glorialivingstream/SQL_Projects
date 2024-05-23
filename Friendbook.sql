
-- Drop tables if they exist in the database
DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS hobbies;
DROP TABLE IF EXISTS friends;

-- create persons table and populate with records
CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, fullname TEXT, age
INTEGER);
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

-- create and populate hobbies table
CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER,
name TEXT);
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

-- create and populate friends table
CREATE table friends (id INTEGER PRIMARY KEY AUTO_INCREMENT, person1_id INTEGER,
person2_id INTEGER);
INSERT INTO friends (person1_id, person2_id)
VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
VALUES (2, 3);

-- querying the tables to observe their structure and entries
SELECT * FROM persons;
SELECT * FROM hobbies;
SELECT * FROM friends;

-- Querying persons and hobbies tables with a join to see a table of all names in the persons table 
-- and their corresponding hobbies
SELECT persons.fullname, hobbies.name AS hobby
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

-- Querying friends table with a multiple join on persons table to see the names of persons
-- and their corresponding friend's names
SELECT persons.fullname AS name, p.fullname AS friend
FROM friends
JOIN persons 
ON friends.person1_id = persons.id
JOIN persons AS p
ON friends.person2_id = p.id;
