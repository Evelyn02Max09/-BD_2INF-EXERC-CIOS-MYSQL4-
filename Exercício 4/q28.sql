USE bd_vida_plena;

SELECT forma_pagamento, SUM(valor) AS total
FROM Pagamento
GROUP BY forma_pagamento;
