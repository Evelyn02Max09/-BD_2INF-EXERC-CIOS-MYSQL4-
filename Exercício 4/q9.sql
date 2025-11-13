USE bd_vida_plena;

INSERT INTO Convenio (nome, cnpj, desconto) VALUES
('SaúdeTop', '12345678000199', 10),
('VidaMais', '98765432000144', 5),
('BemEstar', '11223344000155', 15);

INSERT INTO Paciente (nome, cpf, data_nascimento, contato, tipo_atendimento, id_convenio) VALUES
('Ana Silva','11111111111','2000-05-10','99999-1111','Convênio',1),
('Bruno Alves','22222222222','1999-07-20','99999-2222','Convênio',2),
('Carlos Dias','33333333333','1995-03-15','99999-3333','Particular',NULL),
('Daniela Souza','44444444444','2001-11-05','99999-4444','Convênio',2),
('Eduardo Lima','55555555555','1998-01-02','99999-5555','Convênio',3),
('Fernanda Rocha','66666666666','2002-06-11','99999-6666','Particular',NULL),
('Gabriel Torres','77777777777','1997-09-09','99999-7777','Convênio',1),
('Helena Costa','88888888888','1996-12-22','99999-8888','Convênio',NULL),
('Igor Matos','99999999999','2003-04-28','99999-9999','Convênio',3),
('Julia Mendes','10101010101','1994-02-14','99999-1010','Particular',NULL);

INSERT INTO Medico (nome, crm, especialidade, salario) VALUES
('Dr. Marcos','CRM001','Cardiologia',12000),
('Dra. Paula','CRM002','Dermatologia',10000),
('Dr. Renato','CRM003','Pediatria',9500),
('Dra. Carla','CRM004','Ortopedia',11000),
('Dr. Lucas','CRM005','Cardiologia',12500);

INSERT INTO Exame (nome, preco_base) VALUES
('Hemograma', 30),
('Raio-X', 80),
('Eletrocardiograma', 100),
('Ultrassom', 120),
('Teste Ergométrico', 150);

INSERT INTO Consulta (id_paciente, id_medico, data_consulta, preco_base, status) VALUES
(1,1,'2025-01-10',100,'Pendente'),
(2,2,'2025-01-11',120,'Pendente'),
(3,3,'2025-01-12',90,'Pendente'),
(4,1,'2025-01-13',110,'Pendente'),
(5,5,'2025-01-14',130,'Pendente'),
(6,1,'2025-01-15',100,'Pendente'),
(7,3,'2025-01-16',95,'Pendente'),
(8,4,'2025-01-17',140,'Pendente'),
(9,2,'2025-01-18',120,'Pendente'),
(10,5,'2025-01-19',135,'Pendente');
