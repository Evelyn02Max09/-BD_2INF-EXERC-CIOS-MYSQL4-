USE bd_vida_plena;

SELECT *, 
(SELECT SUM(valor) FROM Pagamento 
 WHERE id_consulta IN (SELECT id_consulta FROM Consulta 
                       WHERE MONTH(data_consulta)=1 AND YEAR(data_consulta)=2025)
) AS total_faturado
FROM Consulta
WHERE MONTH(data_consulta)=1 AND YEAR(data_consulta)=2025;
