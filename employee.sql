-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

-- Crear tabla departamento
CREATE TABLE employee_department (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR NOT NULL,
    description VARCHAR
);

-- Crear tabla empleado
CREATE TABLE employee (
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR NOT NULL,
    last_name   VARCHAR NOT NULL,
    department_id INTEGER REFERENCES employee_department
);

-- Insertar departamentos
INSERT INTO employee_department ("name", description) VALUES('Software', 'Departamento de software');
INSERT INTO employee_department ("name", description) VALUES('RH', 'Recursos Humanos');
INSERT INTO employee_department ("name", description) VALUES('Finanzas', 'Departamento de Finanzas');
INSERT INTO employee_department ("name", description) VALUES('Dirección General', 'Departamento de Dirección General');
INSERT INTO employee_department ("name", description) VALUES('Soporte', 'Departamento de Soporte');
INSERT INTO employee_department ("name", description) VALUES('Mercadotecnia', 'Departamento de Mercadotecnia');

-- Insertar empleados
INSERT INTO employee (first_name, last_name, department_id) VALUES('Edgar', 'de la Cruz', 1);
INSERT INTO employee (first_name, last_name, department_id) VALUES('Gabriela', 'Flores', 2);
INSERT INTO employee (first_name, last_name, department_id) VALUES('Anuar', 'de la Cruz', 3);
INSERT INTO employee (first_name, last_name, department_id) VALUES('Marisol', 'Vasconcelos', 3);

-- Crear tabla hobby
CREATE TABLE employee_hobby (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR NOT NULL,
    description VARCHAR
);

-- Insertar hobby
INSERT INTO employee_hobby ("name", description) VALUES('Leer', 'Leer libros');
INSERT INTO employee_hobby ("name", description) VALUES('Dibujar', 'Dibujar paisajes');
INSERT INTO employee_hobby ("name", description) VALUES('Cantar', 'Cantar en el karaoke');

-- Crear tabla para relacionar empleado y hobby
CREATE TABLE employee_hobby_employee_rel (
	id          SERIAL PRIMARY KEY,
    employee_id INTEGER REFERENCES employee,
    employee_hobby_id INTEGER REFERENCES employee_hobby
);

-- Insertar hobby - empleado
INSERT INTO employee_hobby_employee_rel
    (employee_id, employee_hobby_id) VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (2, 3),
    (3, 1),
    (3, 3),
    (4, 2),
    (4, 1);

-- Agregar jefe
ALTER TABLE employee ADD boss_id INTEGER;
ALTER TABLE employee ADD FOREIGN KEY (boss_id) REFERENCES employee;

-- Asignar jefe y empleado
UPDATE employee SET boss_id = 2 WHERE id = 1;
UPDATE employee SET boss_id = 2 WHERE id = 3;

-- ...
