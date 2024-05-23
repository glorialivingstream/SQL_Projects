-- Creating a database for books
CREATE DATABASE booklist;

-- Using booklist database
USE booklist;

-- Create a table for the books
CREATE TABLE books (
			id INT PRIMARY KEY AUTO_INCREMENT,
            name TEXT,
            rating FLOAT);

-- Populating Books table
INSERT INTO books (name, rating)
			VALUES("Jurassic Park", 4.1),
            ("Project Hail Mary", 4.5),
            ("The Three-Body Problem", 4.1),
            ("When Breath Becomes Air", 4.4),
            ("The Ones Who Walk Away From Omelas", 4.4),
            ("The Bomber Mafia", 4.0),
            ('To All The Boys I\'ve Loved Before', 4.0),
			('All the Men in Lagos Are Mad', 4.0),
			('A Broken People\'s Playlist', 4.3),
			('The Way of Kings', 4.7),
			('The Lies of Locke Lamora', 4.3),
			('The Blade Itself', 4.2),
			('Assassin\'s Apprentice', 4.2),
			('Red Rising', 4.3),
			('The Night Circus', 4.0),
			('The Martian', 4.4),
			('A Game of Thrones', 4.5),
			('Dune', 4.2),
			('The Book Thief', 4.4),
			('Neverwhere', 4.2),
			('The Alchemist', 3.9),
			('Good Omens', 4.3),
			('The Secret History', 4.1),
			('American Gods', 4.1),
			('The Goldfinch', 3.9),
			('Ender\'s Game', 4.3),
			('The Giver', 4.1),
			('The Hunger Games', 4.3),
			('Harry Potter and the Sorcerer\'s Stone', 4.5),
			('The Fellowship of the Ring', 4.4);

-- Show records in books
SELECT *
FROM books;