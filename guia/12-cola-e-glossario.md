# 12. Folha de cola e glossário

```sql
-- CONSULTAR
SELECT col1, col2 FROM tabela;
SELECT DISTINCT col FROM tabela;
SELECT * FROM tabela WHERE col = 'texto' AND num > 10;
SELECT * FROM tabela ORDER BY col DESC LIMIT 5;

-- RESUMIR
SELECT COUNT(*), SUM(col), AVG(col), MIN(col), MAX(col) FROM tabela;
SELECT grupo, COUNT(*) FROM tabela GROUP BY grupo HAVING COUNT(*) > 1;

-- JUNTAR
SELECT a.col, b.col
FROM a INNER JOIN b ON b.a_id = a.id;   -- só correspondências
FROM a LEFT JOIN  b ON b.a_id = a.id;   -- todos de a

-- ALTERAR (sempre com WHERE!)
INSERT INTO tabela (col1, col2) VALUES ('x', 1);
UPDATE tabela SET col1 = 'y' WHERE id = 1;
DELETE FROM tabela WHERE id = 1;

-- ESTRUTURA
CREATE TABLE t (id INTEGER PRIMARY KEY, nome VARCHAR(50) NOT NULL);
ALTER TABLE t ADD COLUMN idade INTEGER;
DROP TABLE t;
```

## Glossário

- **Banco de dados:** Conjunto organizado de tabelas guardadas e gerenciadas por um programa (o SGBD).
- **SGBD:** Sistema Gerenciador de Banco de Dados: PostgreSQL, MySQL, SQL Server, SQLite, Oracle.
- **Tabela, linha, coluna:** A “aba”, um registro e um campo, respectivamente.
- **Chave primária (PK):** Coluna que identifica cada linha de forma única, como um CPF.
- **Chave estrangeira (FK):** Coluna que aponta para a chave primária de outra tabela, criando a ligação entre elas.
- **Consulta (query):** Qualquer comando SQL enviado ao banco, especialmente um `SELECT`.
- **Agregação:** Transformar várias linhas em um resultado: contar, somar, tirar a média.
- **JOIN:** Combinar linhas de duas tabelas a partir de uma coluna em comum.
- **NULL:** Ausência de valor.
- **Transação:** Grupo de comandos que só valem se todos derem certo; pode ser desfeito com `ROLLBACK`.

---

<p align="center"><a href="11-exercicios.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="13-como-praticar.md">Próximo →</a></p>
