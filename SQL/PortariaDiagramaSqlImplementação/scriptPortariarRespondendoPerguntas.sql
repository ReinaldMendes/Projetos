-- Inserção de 10 Cadastros de Moradores Fictícios:
INSERT INTO Pessoa (IdPessoa, Nome, Sobrenome)
VALUES
(1, 'João', 'Silva'),
(2, 'Maria', 'Oliveira'),
(3, 'Carlos', 'Santos'),
(4, 'Ana', 'Pereira'),
(5, 'Luiz', 'Mendes'),
(6, 'Paula', 'Lima'),
(7, 'Pedro', 'Alves'),
(8, 'Camila', 'Costa'),
(9, 'Rafaela', 'Rocha'),
(10, 'Daniel', 'Oliveira');

-- Inserção de 10 visitas programadas;
INSERT INTO Visitante (IdVisit, MotivoVisita, NomedoVisitado, IdPessoa)
VALUES
(1, 'Entrega de encomenda', 'João Silva', 1),
(2, 'Reunião de negócios', 'Maria Oliveira', 2),
(3, 'Manutenção predial', 'Carlos Santos', 3),
(4, 'Visita familiar', 'Ana Pereira', 4),
(5, 'Entrega de documentos', 'Luiz Mendes', 5),
(6, 'Instalação de serviços', 'Paula Lima', 6),
(7, 'Entrega de convite', 'Pedro Alves', 7),
(8, 'Visita de amigos', 'Camila Costa', 8),
(9, 'Reparo elétrico', 'Rafaela Rocha', 9),
(10, 'Consulta médica', 'Daniel Oliveira', 10);

-- Consulta SQL - informações sobre as pessoas que acessaram a portaria nos últimos 6 meses:

-- Inserir dados fictícios na tabela Biometria
INSERT INTO Biometria (IdBio, tipoControle, idMorador, idFuncionario) VALUES
  (1, 1, NULL, NULL),
  (2, 2, NULL, NULL),
  (3, 1, NULL, NULL),
  (4, 2, NULL, NULL),
  (5, 1, NULL, NULL);

-- Inserir dados fictícios na tabela Portao com base nos dados  da tabela Pessoa
INSERT INTO Portao (IdPortao, tipo, idBio,idPessoa, DataAcesso) VALUES
  (6, 1, 1, 1,'2023-11-17'),
  (7, 2, 2, 2, '2023-11-16'),
  (8, 1, 3, 3,'2023-11-15'),
  (9, 2, 4, 4,'2023-11-14'),
  (10, 1, 5, 5, '2023-11-13');

SELECT
    IdPessoa 
FROM
    portao
WHERE
    dataAcesso >= CURRENT_DATE - INTERVAL '6 month';


-- Consulta SQL - as informações sobre os incidentes da última semana;

-- Inserir dados fictícios na tabela Ocorrencia
INSERT INTO Ocorrencia (idOcorrencia, Tipo, dataO, Hora, idRegistroFilma, idDispara)
VALUES
  (1, 'Intrusão', '2023-11-17', '12', NULL, NULL),
  (2, 'Roubo', '2023-11-18', '15', NULL, NULL),
  (3, 'Incêndio', '2023-11-19', '08', NULL, NULL),
  (4, 'Vandalismo', '2023-11-20', '18', NULL, NULL),
  (5, 'Alarme Falso', '2023-11-21', '10', NULL, NULL);

-- Consulta dos incidentes da última semana
SELECT *
FROM Ocorrencia
WHERE dataO >= CURRENT_DATE - INTERVAL '1 week';


-- Consulta SQL - Número de Vagas Disponíveis:
SELECT COUNT(*) AS VagasDisponiveis
FROM Estacionamento;
