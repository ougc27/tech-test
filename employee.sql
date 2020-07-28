-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id int IDENTITY(1,1) PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255) 
);

CREATE TABLE employee_department (
    id int IDENTITY(1,1) PRIMARY KEY,
    name varchar(255),
    description varchar(255)
);

ALTER TABLE employee
ADD id_department int,
FOREIGN KEY(id_department) REFERENCES  employee_department(id);

INSERT INTO employee_department 
VALUES
('Desarollo', 'Programadores'),
('RH', 'Recursos Humanos'),
('Marketing', 'Diseñadores'),
('Ingenieria', 'Sistemas y soporte'),
('Ventas', 'Servicios'),
('Administracion', 'Facturacion');

INSERT INTO employee VALUES
('Javier', 'Ramirez','1'),
('Oliver', 'Cervantez','2'),
('Bob', 'Gonzalez','1'),
('Jesus', 'Guzman','5');
