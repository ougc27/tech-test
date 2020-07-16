-- Desarrollador: Vargas Contreras Xavier Alexis
-- Version 1:0
--SQL TEST 2

-- 1. Crea una tabla llamada "employee_hobby" con los campos "id", "name", "description".
CREATE TABLE public.employee_hobby
(
    id integer,
    name character varying,
    description character varying,
    PRIMARY KEY (id)
);
-- 2. Haz los cambios necesarios en la base de datos para poder asignar a los empleados sus pasatiempos.
CREATE TABLE public.hobbie_employee
(
    id_employee integer,
    id_hobbie integer,
    id integer,
    PRIMARY KEY (id)
);

ALTER TABLE public.hobbie_employee
    ADD FOREIGN KEY (id_hobbie)
    REFERENCES public.employee_hobby (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
-- 3. Inserta 3 pasatiempos y asígnale a todos los empleados al menos 2 pasatiempos. 

INSERT INTO public.employee_hobby
	VALUES ('1','Correr','Deporte');
INSERT INTO public.employee_hobby     
        VALUES ('2','Bailar','Arte');
INSERT INTO public.employee_hobby     
        VALUES ('3','Estudiar','Aprendizaje');

INSERT INTO public.hobbie_employee    
        VALUES ('1','1','1');
INSERT INTO public.hobbie_employee    
        VALUES ('1','1','2');
INSERT INTO public.hobbie_employee    
        VALUES ('1','2','3')
INSERT INTO public.hobbie_employee    
        VALUES ('1','2','1');
INSERT INTO public.hobbie_employee    
        VALUES ('1','3','1');
INSERT INTO public.hobbie_employee    
        VALUES ('1','4','2');


;

