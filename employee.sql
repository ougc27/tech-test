ALTER TABLE employee
ADD BossID int,
FOREIGN KEY(BossID) REFERENCES  employee(id);

UPDATE employee SET BossID = 3;