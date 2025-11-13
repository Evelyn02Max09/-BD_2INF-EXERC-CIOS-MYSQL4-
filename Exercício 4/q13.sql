USE bd_vida_plena;

UPDATE Consulta
SET status = 'Realizada'
WHERE data_consulta < CURDATE();
