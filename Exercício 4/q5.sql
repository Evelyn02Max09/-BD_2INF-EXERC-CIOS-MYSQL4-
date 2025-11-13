USE bd_vida_plena;

ALTER TABLE Paciente
ADD CONSTRAINT chk_data_nascimento CHECK (data_nascimento < CURDATE());
