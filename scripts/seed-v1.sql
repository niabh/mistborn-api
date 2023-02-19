------------
-- SCHEMA --
------------
-- Books
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL,
    isbn varchar(255),
    pages INT,
    publisher varchar(255),
    country varchar(255),
    released varchar(255)
);

-- Locations
DROP TABLE IF EXISTS Dominances;
CREATE TABLE Dominances (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL
);

DROP TABLE IF EXISTS Ashmounts;
CREATE TABLE Ashmounts (
    id INT PRIMARY KEY,
    dominance_id INT,
    name varchar(255) NOT NULL,
    FOREIGN KEY (dominance_id) REFERENCES Dominances(id)
);

DROP TABLE IF EXISTS Body_Waters;
CREATE TABLE BodyWaters (
    id INT PRIMARY KEY,
    dominance_id INT,
    name varchar(255) NOT NULL,
    FOREIGN KEY (dominance_id) REFERENCES Dominances(id)
);

-- Characters
DROP TABLE IF EXISTS Races;
CREATE TABLE Races (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL,
    origin varchar(255)
);

DROP TABLE IF EXISTS Characters;
CREATE TABLE Characters (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL,
    gender varchar(255),
    race_id INT,
    abilities varchar(255),
    born INT,
    FOREIGN KEY (race_id) REFERENCES Races(id),
    FOREIGN KEY (born) REFERENCES Dominances(id)
);

DROP TABLE IF EXISTS Character_Alias;
CREATE TABLE Character_Alias (
    id INT PRIMARY KEY,
    character_id INT,
    alias varchar(255),
    FOREIGN KEY (character_id) REFERENCES Character(id)
);

DROP TABLE IF EXISTS Character_Appareances;
CREATE TABLE Character_Appareances (
    id INT PRIMARY KEY,
    character_id INT,
    book_id INT,
    FOREIGN KEY (character_id) REFERENCES Character(id),
    FOREIGN KEY (book_id) REFERENCES Book(id)
);

-- Quotes
DROP TABLE IF EXISTS Quotes;
CREATE TABLE Quotes (
    id INT PRIMARY KEY,
    character_id INT,
    book_id INT,
    description TEXT,
    FOREIGN KEY (character_id) REFERENCES Character(id),
    FOREIGN KEY (book_id) REFERENCES Book(id)
);

-- Magic systems
DROP TABLE IF EXISTS Magic_Systems;
CREATE TABLE Magic_Systems (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL
);

DROP TABLE IF EXISTS Metals;
CREATE TABLE Metals (
    id INT PRIMARY KEY,
    magic_system_id INT,
    name varchar(255),
    description TEXT,
    FOREIGN KEY (magic_system_id) REFERENCES Magic_Systems(id)
);

----------
-- DATA --
----------
-- Books
INSERT INTO Books
  (id, name, isbn, pages, publisher, country, released)
VALUES
  (1, 'The Final Empire', '	0-7653-1178-X', 541, 'Tor Books', 'United States','2006-07-17'), 
  (2, 'The Well of Ascension', '978-0-7653-1688-2', 590, 'Tor Books', 'United States','2007-08-21'),
  (3, 'The Hero of Ages', '978-0-7653-1689-9', 572, 'Tor Books', 'United States','2008-10-14'),
  (4, 'The Alloy of Law', '978-0-7653-3042-0', 336, 'Tor Books', 'United States','2011-11-08'),
  (5, 'Shadows of Self', '978-0-7653-7855-2', 383, 'Tor Books', 'United States','2015-10-06'),
  (6, 'The Bands of Mourning', '978-0-7653-7857-6', 448, 'Tor Books', 'United States','2016-01-26'),
  (7, 'The Lost Metal', '978-0-7653-9119-3', 528, 'Tor Books', 'United States','2022-11-15');

-- Locations
INSERT INTO Dominances
  (id, name)
VALUES
  (1, 'Farmost Dominance'), 
  (2, 'Terris Dominance'),
  (3, 'Western Dominance'),
  (4, 'Northern Dominance'),
  (5, 'Central Dominance'), 
  (6, 'Southern Dominance'),
  (7, 'Eastern Dominance'),
  (8, 'Crescent Dominance'),
  (9, 'Remote Dominance');

INSERT INTO Ashmounts
  (id, dominance_id, name)
VALUES
  (1, 5, 'Tyrian'), 
  (2, 6, 'Zerinah'),
  (3, 7, 'Faleast'),
  (4, 6, 'Doriel'),
  (5, 3, 'Morag'),
  (6, 4, 'Kalling'),
  (7, 3, 'Torinost');

INSERT INTO Body_Waters
  (id, dominance_id, name)
VALUES
  (1, 7, 'The Blacklake'), 
  (2, 4, 'Lake Venture'),
  (3, 7, 'North Searan'),
  (4, 7, 'River Searan'),
  (5, 7, 'South Searan');

-- Characters
INSERT INTO Races
  (id, name, origin)
VALUES
  (1, 'Human', ''), 
  (2, 'Kandra', 'Hemalurgy'),
  (3, 'Koloss', 'Hemalurgy'),
  (4, 'Steel Inquisitor', 'Hemalurgy');

--Characters
--Character_Alias
--Character-Appareances

--Quotes

-- Magic systems
INSERT INTO Magic_Systems
  (id, name)
VALUES
  (1, 'Allomancy'), 
  (2, 'Hemalurgy'),
  (3, 'Feruchemy'),
  (4, 'Northern Dominance');

--Metals