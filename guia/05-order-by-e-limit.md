# 5. ORDER BY e LIMIT: ordenar e limitar

```sql
SELECT nome, idade
FROM clientes
WHERE idade >= 30
ORDER BY idade DESC;
```

**Resultado:** do mais velho para o mais novo

| nome | idade |
|---|---:|
| Fábio | 52 |
| Carla | 41 |
| Elisa | 35 |
| Ana | 30 |

- `ASC` é crescente (o padrão); `DESC` é decrescente.
- Dá para ordenar por mais de uma coluna: `ORDER BY cidade, idade DESC`.

Para pegar só as primeiras linhas, use `LIMIT`:

```sql
SELECT nome, idade
FROM clientes
ORDER BY idade DESC
LIMIT 2;
```

**Resultado:** os dois mais velhos

| nome | idade |
|---|---:|
| Fábio | 52 |
| Carla | 41 |

> 💡 **Dialetos**
>
> O `LIMIT 2` funciona em PostgreSQL, MySQL e SQLite. No SQL Server, escreve-se `SELECT TOP 2 nome, idade ...`. O resto da linguagem é quase igual em todos.

---

<p align="center"><a href="04-where.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="06-contar-somar-agrupar.md">Próximo →</a></p>
