/* Database schema to keep the structure of entire database. */

-- DAY 1
DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(40) NOT NULL,
	date_of_birth DATE NOT NULL,
	escape_attempts INT NOT NULL,
	neutered BOOLEAN NOT NULL,
	weight_kg DECIMAL(5,2) NOT NULL,
	PRIMARY KEY(id)
);

-- DAY 2
ALTER TABLE animals ADD species VARCHAR(20);

--DAY 3
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS species;

CREATE TABLE owners(
	id INT GENERATED ALWAYS AS IDENTITY,
	full_name VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE species(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(20) NOT NULL,
	PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT FK_AnimalSpecies FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD CONSTRAINT FK_AnimalOwner FOREIGN KEY (owner_id) REFERENCES owners(id);

--DAY 4
DROP TABLE IF EXISTS vets;
DROP TABLE IF EXISTS specializations;
DROP TABLE IF EXISTS visits;

CREATE TABLE vets(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	data_of_graduation DATE NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE specializations(
	species_id INT,
	vet_id INT,
	PRIMARY KEY(species_id, vet_id),
	FOREIGN KEY (species_id) REFERENCES species(id),
	FOREIGN KEY (vet_id) REFERENCES vets(id)
);

CREATE TABLE visits(
	vet_id INT,
	animal_id INT,
	visit_date DATE,
	PRIMARY KEY(vet_id, animal_id, visit_date),
	FOREIGN KEY (vet_id) REFERENCES vets(id),
	FOREIGN KEY (animal_id) REFERENCES animals(id)
);