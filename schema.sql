/* Database schema to keep the structure of entire database. */

-- DAY 1
DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
	id INT  GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(40) NOT NULL,
	date_of_birth DATE NOT NULL,
	escape_attempts INT NOT NULL,
	neutered BOOLEAN NOT NULL,
	weight_kg DECIMAL(5,2) NOT NULL,
	PRIMARY KEY(id)
);

-- DAY 2
ALTER TABLE animals ADD species VARCHAR(20);