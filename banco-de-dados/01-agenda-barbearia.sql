-- Agenda de uma barbearia: o modelo de dados por trás de um bot de agendamento.
-- Para rodar: sqlite3 agenda.db < banco-de-dados/01-agenda-barbearia.sql

-- Quem marca horário
CREATE TABLE clientes (
  id       INTEGER PRIMARY KEY,
  nome     TEXT    NOT NULL,
  telefone TEXT    NOT NULL UNIQUE  -- um cadastro por número de WhatsApp
);

-- O que a barbearia oferece
CREATE TABLE servicos (
  id             INTEGER PRIMARY KEY,
  nome           TEXT    NOT NULL,
  preco_centavos INTEGER NOT NULL,  -- dinheiro em centavos: 3500 = R$ 35,00
  duracao_min    INTEGER NOT NULL
);

-- Liga um cliente a um serviço num horário
CREATE TABLE agendamentos (
  id         INTEGER PRIMARY KEY,
  cliente_id INTEGER NOT NULL REFERENCES clientes(id),
  servico_id INTEGER NOT NULL REFERENCES servicos(id),
  inicio     TEXT    NOT NULL,      -- formato 'AAAA-MM-DD HH:MM'
  status     TEXT    NOT NULL DEFAULT 'marcado'
             CHECK (status IN ('marcado', 'cancelado', 'concluido'))
);

-- Dados de exemplo
INSERT INTO clientes (nome, telefone) VALUES
  ('Ana',   '5511900000001'),
  ('Bruno', '5511900000002');

INSERT INTO servicos (nome, preco_centavos, duracao_min) VALUES
  ('Corte',         3500, 30),
  ('Barba',         2500, 20),
  ('Corte + barba', 5500, 50);

INSERT INTO agendamentos (cliente_id, servico_id, inicio, status) VALUES
  (1, 1, '2026-11-10 14:00', 'concluido'),
  (2, 3, '2026-11-10 15:00', 'marcado'),
  (1, 2, '2026-11-12 10:00', 'cancelado');
