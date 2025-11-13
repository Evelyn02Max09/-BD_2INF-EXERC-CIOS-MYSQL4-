USE bd_vida_plena;

UPDATE Medico 
SET salario = salario * 1.10
WHERE especialidade = 'Cardiologia';

