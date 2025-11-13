USE bd_vida_plena;

SELECT p.nome
FROM Paciente p
WHERE p.id_paciente NOT IN (
    SELECT c.id_paciente
    FROM Consulta c
    JOIN Pagamento pa ON pa.id_consulta = c.id_consulta
);
