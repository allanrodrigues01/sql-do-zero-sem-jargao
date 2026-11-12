CREATE TABLE clientes (
  id     INTEGER PRIMARY KEY,
  nome   VARCHAR(100) NOT NULL,
  cidade VARCHAR(50),
  idade  INTEGER
);

CREATE TABLE pedidos (
  id         INTEGER PRIMARY KEY,
  cliente_id INTEGER,
  produto    VARCHAR(50),
  valor      DECIMAL(10,2)
);

INSERT INTO clientes (id, nome, cidade, idade) VALUES
  (1, 'Ana',   'Recife',    30),
  (2, 'Bruno', 'São Paulo', 25),
  (3, 'Carla', 'São Paulo', 41),
  (4, 'Diego', 'Curitiba',  17),
  (5, 'Elisa', 'Recife',    35),
  (6, 'Fábio', 'Curitiba',  52);

INSERT INTO pedidos (id, cliente_id, produto, valor) VALUES
  (101, 1, 'Fone',    120),
  (102, 1, 'Mouse',    60),
  (103, 3, 'Teclado', 200),
  (104, 2, 'Fone',    120),
  (105, 5, 'Monitor', 900);
