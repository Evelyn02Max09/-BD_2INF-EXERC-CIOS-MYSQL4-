USE bd_vida_plena;

SELECT m.nome, COUNT(*) AS total
FROM Medico m
JOIN Consulta c ON m.id_medico = c.id_medico
GROUP BY m.id_medico
ORDER BY total DESC
LIMIT 1;
