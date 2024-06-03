-- -------- < detran > --------
--
--                    SCRIPT DE CONSULTA (DML)
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


SELECT * FROM VEICULO
WHERE cpf = '34567890123';

SELECT * FROM PROPRIETARIO
WHERE nome LIKE '%silva%';

SELECT * FROM VEICULO 
INNER JOIN INFRACAO ON VEICULO.placa = INFRACAO.PLACA
WHERE INFRACAO.dtHora BETWEEN '2023-03-19 00:00:00' AND '2023-06-30 00:00:00';

SELECT MODELO.modelo, count(VEICULO.placa) AS quantidade
FROM MODELO
LEFT JOIN VEICULO ON VEICULO.idModelo = MODELO.idModelo
GROUP BY MODELO.modelo
ORDER BY quantidade DESC;
