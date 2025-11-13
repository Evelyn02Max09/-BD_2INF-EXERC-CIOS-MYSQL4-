USE bd_vida_plena;

SELECT m.nome, COUNT(c.id_consulta) AS total_atendimentos
FROM Medico m
LEFT JOIN Consulta c ON m.id_medico = c.id_medico
GROUP BY m.id_medico;
