-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
    id          SERIAL,
    name        VARCHAR NOT NULL UNIQUE,
    description VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id          SERIAL,
    first_name  VARCHAR NOT NULL,
    last_name   VARCHAR NOT NULL,
    employee_department_id INTEGER REFERENCES employee_department,
    PRIMARY KEY (id)
);

INSERT INTO employee_department VALUES (1, 'Marketing', 'Departamento comercial o marketing');
INSERT INTO employee_department VALUES (2, 'Producción', 'Departamento de producción');
INSERT INTO employee_department VALUES (3, 'Desarrollo', 'Departamento de desarrollo informático');
INSERT INTO employee_department VALUES (4, 'Contabilidad', 'Departamento de finanzas y contabilidad');
INSERT INTO employee_department VALUES (5, 'RH', 'Departamento de recursos humanos');
INSERT INTO employee_department VALUES (6, 'Dirección', 'Dirección general');

INSERT INTO employee VALUES (1, 'Mike', 'Zetina', 1);
INSERT INTO employee VALUES (2, 'Oscar', 'Garza', 2);
INSERT INTO employee VALUES (3, 'Antonio', 'Romero', 4);
INSERT INTO employee VALUES (4, 'Felipe', 'Ortega', 6);

-- ...
