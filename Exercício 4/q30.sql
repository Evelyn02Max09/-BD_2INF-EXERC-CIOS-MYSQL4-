USE bd_vida_plena;

SELECT 
    forma_pagamento,
    SUM(valor) AS total_arrecadado
FROM Pagamento
GROUP BY forma_pagamento;
