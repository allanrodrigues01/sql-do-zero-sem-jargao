# 3. SELECT: consultar dados

`SELECT` significa “mostre”. `FROM` diz de qual tabela. É o comando que você mais vai usar.

```sql
SELECT nome, cidade
FROM clientes;
```

**Resultado:** duas colunas, todas as linhas

| nome | cidade |
|---|---|
| Ana | Recife |
| Bruno | São Paulo |
| Carla | São Paulo |
| Diego | Curitiba |
| Elisa | Recife |
| Fábio | Curitiba |

Para trazer todas as colunas, use o asterisco:

```sql
SELECT * FROM clientes;
```

## Apelidos e valores repetidos

```sql
-- AS dá um apelido à coluna no resultado
SELECT nome AS cliente, idade AS anos
FROM clientes;

-- DISTINCT remove repetições
SELECT DISTINCT cidade
FROM clientes;
```

**Resultado:** DISTINCT cidade

| cidade |
|---|
| Recife |
| São Paulo |
| Curitiba |

> 💡 **Regras de escrita**
>
> O ponto e vírgula (`;`) encerra o comando. Maiúsculas e minúsculas nos comandos não fazem diferença, mas escrever `SELECT` em maiúsculas ajuda a ler. Linhas que começam com `--` são comentários e o banco ignora.

---

<p align="center"><a href="02-laboratorio.md">← Anterior</a> · <a href="../README.md">Índice</a> · <a href="04-where.md">Próximo →</a></p>
