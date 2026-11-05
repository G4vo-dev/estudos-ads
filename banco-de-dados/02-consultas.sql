.headers on
.mode column
-- Desafio 1: cardápio do mais caro para o mais barato
SELECT nome, preco_centavos FROM servicos
ORDER BY preco_centavos DESC;

-- Desafio 2: agenda do dia 10/11/2026
SELECT inicio, status
FROM agendamentos
WHERE inicio LIKE '%2026-11-10%';

-- Desafio 3: quantidade de agendamentos por status
SELECT status, COUNT(*) AS total
FROM agendamentos
GROUP BY status;
