USE bd_vida_plena;

SELECT co.nome, COUNT(pa.id_paciente) AS total_usuarios
FROM Convenio co
LEFT JOIN Paciente pa ON co.id_convenio = pa.id_convenio
GROUP BY co.id_convenio
ORDER BY total_usuarios DESC;
