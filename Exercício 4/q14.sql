USE bd_vida_plena;

DELETE FROM Exame
WHERE nome = 'Outros' AND preco_base < 50;
