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

-- ...
