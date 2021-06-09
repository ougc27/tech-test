-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--create database command -> sudo -u postgree createdb employee_employee

CREATE TABLE employee (
	id INT PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	id_department INT NOT NULL,
	FOREIGN KEY (id_department)
		REFERENCES employee_department(id)
);

CREATE TABLE employee_department (
	id INT PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	id_department INT NOT NULL,
	FOREIGN KEY (id_department)
		REFERENCES employee_department(id)
);

CREATE TABLE employee_hobby (
);

-- ...
