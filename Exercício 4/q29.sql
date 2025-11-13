USE bd_vida_plena;

SELECT p.nome
FROM Paciente p
LEFT JOIN Consulta c ON p.id_paciente = c.id_paciente
LEFT JOIN Pagamento pg ON pg.id_consulta = c.id_consulta
WHERE pg.id_pagamento IS NULL;
