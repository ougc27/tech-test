-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE DATABASE employee_employee;


CREATE TABLE employee_department (
    id serial,
    employee_id int,
    name varchar(50),
    description varchar(250),
    primary key (id)
    );

CREATE TABLE employee (
    id serial,
    department_id int,
    first_name varchar(50),
    last_name varchar(50),
    primary key (id),
    CONSTRAINT fk_employee
    FOREIGN KEY(department_id) 
	REFERENCES employee_department(id)
    );


-- add records 
INSERT INTO employee_department(name,description)
VALUES('department','1'),
      ('department','2'),	
      ('department','3'),	
      ('department','4'),	
      ('department','5'),	
      ('department','6'); 

INSERT INTO employee(department_id,first_name,last_name)
VALUES(1,'employee','1'),
      (2,'employee','2'),	
      (3,'employee','3'),	
      (2,'employee','4'); 

-- ...
