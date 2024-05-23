

CREATE TABLE famous_people (
id INT primary KEY auto_increment,
name text,
gender text,
industry text,
age int,
email text,
date datetime DEFAULT NOW()
);

insert into famous_people (name, gender, industry, age, email)
VALUES("John Cena", "male", "WWE", 46, "johncena56@gmail.com"),

("Sulley Muntari", "male", "football", 35, "sulley110@hotmail.com"),
("Justin Bieber", "male", "music", 39, "jsutin@yahoo.com"),
("Janelle Monae", "female", "music", 36, "janelle.monae@fandroid.com"),
("John Avanzini", "male", "Author" , 87, "johnavanzini@gmail.com");



create table famous_hobbies (
hobby_id INT PRIMARY KEY auto_increment, 
name text,
id int not null
);

insert into famous_hobbies(name,id)values
("cycling",1),("dancing",2),("horse riding",2),
("hiking",3),("reading",4), ("swiming",4),
 ("reading",5),("singing",5);
 
 insert into famous_hobbies(name,id)values
("horse riding",1),("reading",2),("hiking",2),
("fishing",3),("horse riding",4), ("horse riding",4),
 ("swiming",5),("bowling",5);

-- FETCHING ALL QUERIES FROM THE TABLES 
select * from famous_people;
select * from famous_hobbies;

-- finding Avg age of the famous people
SELECT avg(age) as "Average Age" from famous_people;

-- querying distinct count of hobbies from the hobbies table.
SELECT  COUNT(DISTINCT name) from famous_hobbies;

-- querying oldest and youngest famous persons.
SELECT name, MAX(age) as "Oldest" from  famous_people group by name order by Oldest DESC LIMIT 1;
SELECT name, MIN(age) as "Youngest" from  famous_people group by name  order by Youngest ASC LIMIT 1;

-- WRITING A QUERY TO DISPLAY THE ALL FAMOUS_PERSONS AND THEIR HOBBIES
SELECT famous_people.name as famous_people, famous_hobbies.name as hobbies from famous_people 
JOIN famous_hobbies ON famous_people.id = famous_hobbies.id; 

-- WRITING A QUERY TO DISPLAY THE ALL FAMOUS_PERSONS AND count of hobbies
SELECT famous_people.name as "Famous People" , count(famous_hobbies.name) as "Total Hobbies" from famous_people 
JOIN famous_hobbies ON famous_people.id = famous_hobbies.id  group by famous_people.name;
 
-- query to display famous people with multiple hobbies.
SELECT famous_people.name, famous_hobbies.name from famous_people 
Join famous_hobbies 
On famous_people.id = famous_hobbies.id WHERE famous_hobbies.name 
IN ( select name from famous_hobbies where name IN ("dancing","hiking","reading") );

-- Updating Hobby Record 
Update famous_hobbies set name = "swimming" where hobby_id = 15; 

select * from famous_hobbies

 