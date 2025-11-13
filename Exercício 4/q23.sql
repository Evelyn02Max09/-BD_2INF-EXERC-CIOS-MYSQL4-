USE bd_vida_plena;

SELECT e.nome, COUNT(pe.id_exame) AS total_solicitacoes
FROM Exame e
JOIN Pedido_Exame pe ON e.id_exame = pe.id_exame
GROUP BY e.id_exame
ORDER BY total_solicitacoes DESC;
