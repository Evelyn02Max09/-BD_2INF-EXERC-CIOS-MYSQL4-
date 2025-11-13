USE bd_vida_plena;

INSERT INTO Consulta (id_paciente, id_medico, data_consulta, preco_base, status)
VALUES (1,2,'2025-02-01',120,'Pendente');

INSERT INTO Pedido_Exame (id_consulta, id_exame, quantidade, subtotal)
VALUES (LAST_INSERT_ID(), 1, 1, 30);
