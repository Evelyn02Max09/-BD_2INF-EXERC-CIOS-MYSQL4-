USE bd_vida_plena;

SELECT pe.*
FROM Pedido_Exame pe
WHERE pe.subtotal >
      (SELECT AVG(subtotal) FROM Pedido_Exame);
