USE bd_vida_plena;

INSERT INTO Pedido_Exame (id_consulta, id_exame, quantidade, subtotal)
SELECT id_consulta, 1, 1, 30 FROM Consulta LIMIT 5;

INSERT INTO Pedido_Exame (id_consulta, id_exame, quantidade, subtotal)
SELECT id_consulta, 2, 1, 80 FROM Consulta LIMIT 5 OFFSET 5;
