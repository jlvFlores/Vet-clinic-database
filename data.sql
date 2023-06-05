/* Populate database with sample data. */

INSERT INTO animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Agumon',
	'2020-02-03'::date,
	10.23,
	TRUE,
	0
),
(
  'Gabumon',
  '2018-11-15'::date,
  8,
  TRUE,
  2
),
(
  'Pikachu',
  '2021-01-07'::date,
  15.04,
  FALSE,
  1
),
(
  'Devimon',
  '2017-05-12'::date,
  11,
  TRUE,
  5
);