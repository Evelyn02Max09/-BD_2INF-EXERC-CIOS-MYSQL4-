USE bd_vida_plena;

CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    contato VARCHAR(50),
    tipo_atendimento ENUM('Convênio', 'Particular') NOT NULL,
    id_convenio INT NULL,
    FOREIGN KEY (id_convenio) REFERENCES Convenio(id_convenio)
);

CREATE TABLE Convenio (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    desconto DECIMAL(5,2) DEFAULT 0
);

CREATE TABLE Medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE NOT NULL,
    valor_base DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

CREATE TABLE Exame (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedido_Exame (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    id_exame INT NOT NULL,
    quantidade INT DEFAULT 1,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_exame) REFERENCES Exame(id_exame)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    forma_pagamento ENUM('Dinheiro','Cartão','PIX','Boleto'),
    valor DECIMAL(10,2),
    data_pagamento DATE,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);
