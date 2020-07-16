-- Desarrollador: Vargas Contreras Xavier Alexis
-- Version 1:0
--SQL TEST 3

-- 1. Haz los cambios necesarios en la base de datos para poder asignar a los empleados un jefe
ALTER public. employee ADD tipo_empleado integer;
UPDATE public.employee SET tipo_empleado = 0 where 1 =1;

UPDATE public.employee SET tipo_empleado = 0 where id =1;

CREATE TABLE public.jefe_empleado
(
	id_jefe integer,
	id_empleado integer,
	id integer,
	PRIMARY KEY (id)
);


ALTER TABLE public.jefe_empleado
    ADD CONSTRAINT "id_jefe" FOREIGN KEY ("id_jefe")
    REFERENCES public.employee (id);

ALTER TABLE public.jefe_empleado
    ADD CONSTRAINT "id_empleado" FOREIGN KEY ("id_jefe")
    REFERENCES public.employee (id);

INSERT INTO public.employee_department
	VALUES ('1','1','2');
INSERT INTO public.employee_department
	VALUES ('2','1','3');
