-- -------- < detran > --------
--
--                    SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 03/06/2024
-- Autor(es) ..............: Hugo Queiroz Camelo de Melo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: detran
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- Ultimas Alteracoes
--
-- ---------------------------------------------------------

USE detran;

INSERT INTO CATEGORIA (idCategoria, categoria) VALUES
(1, 'Carro'),
(2, 'Moto'),
(3, 'Caminhão'),
(4, 'Ônibus'),
(5, 'Caminhonete');

INSERT INTO MODELO (idModelo, modelo) VALUES
(101, 'Toyota Corolla'),
(102, 'Honda Civic'),
(103, 'Yamaha YBR 125'),
(104, 'Volkswagen Gol'),
(105, 'Ford Fiesta');

INSERT INTO TIPOINFRACAO (idTipo, descricao, valor) VALUES
(1001, 'Excesso de velocidade', 150.00),
(1002, 'Estacionamento irregular', 100.00),
(1003, 'Ultrapassagem em local proibido', 200.00),
(1004, 'Dirigir sem cinto de segurança', 120.00),
(1005, 'Avançar o sinal vermelho', 250.00);

INSERT INTO LOCAL (idLocal, longitude, latitude) VALUES
(2001, -23.5505, -46.6333),
(2002, -22.9068, -43.1729),
(2003, -19.9167, -43.9345),
(2004, -30.0346, -51.2177),
(2005, -25.4284, -49.2733);

INSERT INTO AGENTE (matricula, nome, dtContratacao) VALUES
(3001, 'Fernanda Silva', '2010-05-15'),
(3002, 'Patrícia Rodrigues', '2012-10-20'),
(3003, 'Marcos Costa', '2015-03-08'),
(3004, 'Rafael Oliveira', '2017-09-12'),
(3005, 'Carla Santos', '2019-12-05');

INSERT INTO PROPRIETARIO (cpf, nome, bairro, cidade, estado, sexo, dtNascimento) VALUES
('12345678901', 'José da Silva', 'Centro', 'São Paulo', 'SP', 'M', '1980-03-25'),
('23456789012', 'Maria Oliveira', 'Copacabana', 'Rio de Janeiro', 'RJ', 'F', '1975-08-12'),
('34567890123', 'Carlos Santos', 'Barreiro', 'Belo Horizonte', 'MG', 'M', '1990-11-30'),
('45678901234', 'Ana Pereira', 'Partenon', 'Porto Alegre', 'RS', 'F', '1985-05-10'),
('56789012345', 'Pedro Souza', 'Batel', 'Curitiba', 'PR', 'M', '1972-12-18');

INSERT INTO telefone (cpf, telefone) VALUES
('12345678901', '98765432'),
('23456789012', '87654321'),
('34567890123', '76543210'),
('45678901234', '65432109'),
('56789012345', '54321098');

INSERT INTO VEICULO (placa, chassi, cor, idCategoria, idModelo, cpf) VALUES
('ABC1234', '1ABC1234DEF56789', 'Preto', 1, 101, '12345678901'),
('DEF5678', '2ABC1234DEF56789', 'Azul', 2, 103, '23456789012'),
('GHI9012', '3ABC1234DEF56789', 'Prata', 1, 101, '34567890123'),
('JKL3456', '4ABC1234DEF56789', 'Branco', 1, 105, '45678901234'),
('MNO7890', '5ABC1234DEF56789', 'Vermelho', 1, 102, '56789012345');

INSERT INTO INFRACAO (dtHora, matriculaAgente, idLocal, idTipo, placa, velocidade) VALUES
('2023-01-10 08:30:00', 3001, 2001, 1001, 'ABC1234', 80),
('2023-02-15 13:45:00', 3002, 2002, 1002, 'DEF5678', NULL),
('2023-03-20 10:20:00', 3003, 2003, 1003, 'GHI9012', 90),
('2023-04-25 18:00:00', 3004, 2004, 1004, 'JKL3456', NULL),
('2023-05-30 16:10:00', 3005, 2005, 1005, 'MNO7890', 100);
