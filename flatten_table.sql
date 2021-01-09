CREATE TABLE flattened_records (
	id INTEGER NOT NULL,
	age INTEGER,
	workclass TEXT,
	education_level TEXT,
	education_num INTEGER,
	marital_status TEXT,
	occupation TEXT,
	relationship TEXT,
	race TEXT,
	sex TEXT,
	capital_gain INTEGER,
	capital_loss INTEGER,
	hours_week INTEGER,
	country TEXT,
	over_50k BOOLEAN
);

INSERT INTO flattened_records
SELECT * FROM records;

UPDATE flattened_records 
SET workclass = (SELECT name FROM workclasses WHERE id = workclass);

UPDATE flattened_records 
SET education_level = (SELECT name FROM education_levels WHERE id = education_level);

UPDATE flattened_records 
SET marital_status = (SELECT name FROM marital_statuses WHERE id = marital_status);

UPDATE flattened_records 
SET occupation = (SELECT name FROM occupations WHERE id = occupation);

UPDATE flattened_records 
SET relationship = (SELECT name FROM relationships WHERE id = relationship);

UPDATE flattened_records 
SET race = (SELECT name FROM races WHERE id = race);

UPDATE flattened_records 
SET sex = (SELECT name FROM sexes WHERE id = sex);

UPDATE flattened_records 
SET country = (SELECT name FROM countries WHERE id = country);