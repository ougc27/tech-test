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
(1, 'Programacion', 'Sistemas'),
(2, 'Futbol', 'Deporte'),
(3, 'Ejercicio', 'Gimnasio');

INSERT INTO hobbys VALUES
('1','1'),
('1','2'),
('1','3'),
('2','1'),
('2','3');