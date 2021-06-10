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

--VALUES

INSERT INTO employee_department
VALUES ('100','Desarrollo','Equipo de desarrollo de software'),
('101','Ventas','Equipo de ventas'),
('102','Recursos Humanos','Equipo de reclutamiento'),
('103','Pruebas','Equipo de Testing'),
('104','Marketing','Equipo de Mercadotecnia'),
('105','Produccion','Equipo de Produccion');

INSERT INTO employee
VALUES ('1','Iris Gabriela','Arrona','100'),
('2','Elizabeth','Villareal','102'),
('3','Oscar','Garza','100'),
('4','Luis Adolfo','Guevara','101');


CREATE TABLE employee_hobby (
	id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	description VARCHAR(60) NOT NULL
);

CREATE TABLE employee_join_hobby (
	employee_id INT REFERENCES employee(id),
	hobby_id INT REFERENCES employee_hobby(id),
	constraint id PRIMARY KEY (employee_id, hobby_id)
);


--VALUES


INSERT INTO employee_hobby
VALUES ('1','Bailar','arte escenica\actividad fisica'),
('2','Pintar','Artes plasticas'),
('3','Videojuegos','Realidad Virtual');


INSERT INTO employee_join_hobby
VALUES ('1','1'),
('1','3'),
('2','1'),
('2','2'),
('3','2'),
('3','3'),
('4','1'),
('4','2')
;


--SQL STATEMENT TO SHOW THE MANY 2 MANY RELATION BETWEEN EMPLOYEES AND HOBBIES
/*SELECT * FROM employee_join_hooby MM join employee E on (MM.student_id = E.id)*/



CREATE TABLE boss_join_employee (
	boss_id INT REFERENCES employee(id),
	employee_id INT UNIQUE REFERENCES employee(id),
	constraint b_id PRIMARY KEY (boss_id, employee_id)
);


INSERT INTO boss_join_employee
VALUES ('2','1'),
('3','2'),
('3','4'),
('2','3')
;

ALTER TABLE employee
ADD COLUMN boss_id INT REFERENCES employee(id)

UPDATE employee
SET boss_id = BE.boss_id
FROM boss_join_employee AS BE
WHERE employee.id = BE.employee_id




