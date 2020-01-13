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

CREATE TABLE employee_hobby (
);

-- ...
