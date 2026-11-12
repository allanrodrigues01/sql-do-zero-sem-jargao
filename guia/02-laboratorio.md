# 2. Laboratório: prepare seus dados de treino

Todos os exemplos usam duas tabelas pequenas. Para praticar de verdade, crie-as num SQLite online (veja a [seção 13](13-como-praticar.md)): cole o script abaixo e execute. Depois rode cada exemplo da página e compare com o resultado mostrado.

```sql
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
```

É assim que as tabelas ficam:

**Tabela `clientes`**

| id | nome | cidade | idade |
|---:|---|---|---:|
| 1 | Ana | Recife | 30 |
| 2 | Bruno | São Paulo | 25 |
| 3 | Carla | São Paulo | 41 |
| 4 | Diego | Curitiba | 17 |
| 5 | Elisa | Recife | 35 |
| 6 | Fábio | Curitiba | 52 |

**Tabela `pedidos`**

| id | cliente_id | produto | valor |
|---:|---:|---|---:|
| 101 | 1 | Fone | 120 |
| 102 | 1 | Mouse | 60 |
| 103 | 3 | Teclado | 200 |
| 104 | 2 | Fone | 120 |
| 105 | 5 | Monitor | 900 |

Repare que `pedidos.cliente_id` guarda o `id` de um cliente. É assim que as tabelas se “conversam”. Ana (id 1) fez dois pedidos; Diego e Fábio não fizeram nenhum.

---

<p align="center"><a href="01-o-que-e-sql.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="03-select.md">Próximo →</a></p>
