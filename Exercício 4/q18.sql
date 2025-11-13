USE bd_vida_plena;

DELIMITER //
CREATE TRIGGER trg_nova_consulta
AFTER INSERT ON Consulta
FOR EACH ROW
BEGIN
    INSERT INTO Pedido_Exame (id_consulta, id_exame, quantidade, subtotal)
    SELECT NEW.id_consulta, id_exame, 1, preco_base FROM Exame;
END //
DELIMITER ;
