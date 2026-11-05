.headers on
.mode column
-- Desafio 1: cardápio do mais caro para o mais barato
SELECT nome, preco_centavos FROM servicos
ORDER BY preco_centavos DESC;

