/* Populate database with sample data. */

-- DAY 1
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) 
VALUES 
( 'Agumon',  '2020-02-03'::date, 10.23, TRUE,  0 ),
( 'Gabumon', '2018-11-15'::date, 8,     TRUE,  2 ),
( 'Pikachu', '2021-01-07'::date, 15.04, FALSE, 1 ),
( 'Devimon', '2017-05-12'::date, 11,    TRUE,  5 );

-- DAY 2
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) 
VALUES 
( 'Charmander', '2020-02-08'::date, -11,    TRUE,  0),
( 'Plantmon',   '2021-11-15'::date, -5.7,   TRUE,  2),
( 'Squirtle',   '1993-04-02'::date, -12.13, FALSE, 3),
( 'Angemon',    '2005-06-12'::date, -45,    TRUE,  1),
( 'Boarmon',    '2005-06-07'::date, 20.4,   TRUE,  7),
( 'Blossom',    '1998-10-13'::date, 17,     TRUE,  3),
( 'Ditto',      '2022-05-14'::date, 22,     TRUE,  4);

--DAY 3
INSERT INTO owners (full_name, age) 
VALUES 
( 'Sam Smith',       34 ),
( 'Jennifer Orwell', 19 ),
( 'Bob',             45 ),
( 'Melody Pond',     77 ),
( 'Dean Winchester', 14 ),
( 'Jodie Whittaker', 38 );

INSERT INTO species (name) VALUES ('pokemon'), ('digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');
