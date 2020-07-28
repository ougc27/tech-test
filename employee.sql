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

CREATE TABLE employee_hobby (
    id int IDENTITY(1,1) PRIMARY KEY,
    name varchar(255),
    description varchar(255)
);

CREATE TABLE hobbys (
    id int NOT NULL PRIMARY KEY,
    Employee_ID int,
    FOREIGN KEY (Employee_ID) REFERENCES employee(id),
    Hobby_ID int,
    FOREIGN KEY (Hobby_ID) REFERENCES employee_hobby(id)
);

INSERT INTO employee_hobby VALUES
('Programacion', 'Sistemas'),
('Futbol', 'Deporte'),
('Ejercicio', 'Gimnasio');

INSERT INTO hobbys VALUES
('1','1'),
('1','2'),
('1','3'),
('2','1'),
('2','3');


