-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee ( id INT PRIMARY KEY, first_name VARCHAR(20), last_name VARCHAR(20) );

CREATE TABLE employee_department ( id INT PRIMARY KEY, name VARCHAR(20), description VARCHAR(60) );

INSERT INTO employee (id, first_name, last_name) VALUES (1,'Juan Carlos','Navarro'),(2,'Salvador','Gorostieta
'), (3,'Efren','Gonzales'), (4,'Matias','Carrillo'),(5,'Katia','Espiritu');

INSERT INTO employee_department (id, name, description) VALUES (1,'Ventas','Departamento de ventas'),(2,'Comp
ras','Departamento de compras'), (3,'Manufactura','Departamento de manufactura'), (4,'Calidad','Departamento de calidad'),(5,'Contabilidad
','Departamento de contabilidad'),('6','RH','Departamento de recusos humanos');

ALTER TABLE employee ADD id_department int;

ALTER TABLE employee ADD CONSTRAINT id_departamento FOREIGN KEY (id_department) REFERENCES employee_department (id);

UPDATE employee SET id_department='1' WHERE id=1;
UPDATE employee SET id_department='6' WHERE id=2;
UPDATE employee SET id_department='4' WHERE id=3;
UPDATE employee SET id_department='3' WHERE id=4;
UPDATE employee SET id_department='1' WHERE id=5;

select e.first_name, e.last_name, e.id_department,ed.name,ed.description  from employee e join employee_department ed on ed.id = e.id_depart
ment;

CREATE TABLE employee_hobby (id INT PRIMARY KEY, name VARCHAR(20), description VARCHAR(60));

INSERT INTO employee_hobby (id, name, description) VALUES (1,'Viajar','Viajar'),(2,'Musica','Escuchar musica'), (3,'TV','Ver tv');

CREATE TABLE detalle_employee_hobby (id INT PRIMARY KEY, id_employee INT, id_hobby INT);

ALTER TABLE detalle_employee_hobby ADD CONSTRAINT employee FOREIGN KEY (id_employee) REFERENCES employee (id);

ALTER TABLE detalle_employee_hobby ADD CONSTRAINT hobby FOREIGN KEY (id_hobby) REFERENCES employee_hobby (id);

INSERT INTO detalle_employee_hobby (id, id_employee, id_hobby) VALUES (1,'1','1'),(2,'1','2');

INSERT INTO detalle_employee_hobby (id, id_employee, id_hobby) VALUES (3,'2','2'),(4,'2','3'), (5,'3','1'),(6,'3','3'),(7,'4','1'),(8,'4','3'), (9,'5','2'),(10,'5','1');

ALTER TABLE employee ADD id_boss int;
ALTER TABLE employee ADD CONSTRAINT boss FOREIGN KEY (id_boss) REFERENCES employee (id);
UPDATE employee SET id_boss ='1' WHERE id=1;
UPDATE employee SET id_boss ='1' WHERE id=2;
UPDATE employee SET id_boss ='1' WHERE id=3;
UPDATE employee SET id_boss ='2' WHERE id=4;
UPDATE employee SET id_boss ='2' WHERE id=5;
