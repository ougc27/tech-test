-- Desarrollador: Vargas Contreras Xavier Alexis
-- Version 1:0
--SQL TEST 1

-- 1. Creacion de base de datos llamada "employee_employee"
CREATE DATABASE employee_employee
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;
-- 2. Crea una tabla llamada "employee" con los campos "id", "first_name", "last_name". 
CREATE TABLE public.employee
(
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    PRIMARY KEY (id)
);
--3. Crea una tabla "employee_department" con los campos "id", "name", "description".
CREATE TABLE public.employee_department
(
    id integer NOT NULL,
    name character varying,
    description character varying,
    PRIMARY KEY (id)
);
-- 4. Haz los cambios necesarios en la base de datos para poder asignarle a los empleados su respectivo departamento.
ALTER TABLE public.employee
    ADD COLUMN "CodigoDepartamento" integer;

ALTER TABLE public.employee
    ADD CONSTRAINT "CodigoDepartamento" FOREIGN KEY ("CodigoDepartamento")
    REFERENCES public.employee_department (id);
-- Inserta 4 empleados y 6 departamentos de datos, asígnale a los empleados un departamento. 
INSERT INTO public.employee_department
	VALUES ('1','Departamento 1','Color Azul');
INSERT INTO public.employee_department
        VALUES ('2','Departamento 2','Color Rojo');
INSERT INTO public.employee_department
        VALUES ('3','Departamento 3','Color Negro');
INSERT INTO public.employee_department
        VALUES ('4','Departamento 4','Color Blanco');
INSERT INTO public.employee_department
        VALUES ('5','Departamento 5','Color Rosa');
INSERT INTO public.employee_department
        VALUES ('6','Departamento 6','Color Morado');

INSERT INTO public.employee
	VALUES ('1','Xavier','Vargas','1');
INSERT INTO public.employee
	VALUES ('2','Ricardo','Contreras','4');
INSERT INTO public.employee
	VALUES ('3','Fernando','Sanchez','3');
INSERT INTO public.employee
	VALUES ('4','Eduardo','Gonzales','2');
