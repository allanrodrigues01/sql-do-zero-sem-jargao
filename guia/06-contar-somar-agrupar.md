# 6. Contar, somar e agrupar

Funções de agregação transformam várias linhas em um número só:

| Função | Faz |
|---|---|
| `COUNT(*)` | conta linhas |
| `SUM(coluna)` | soma |
| `AVG(coluna)` | média |
| `MIN(coluna)` / `MAX(coluna)` | menor / maior valor |

```sql
SELECT COUNT(*) AS total,
       AVG(idade) AS idade_media,
       MAX(idade) AS mais_velho
FROM clientes;
```

**Resultado:** uma única linha de resumo

| total | idade_media | mais_velho |
|---:|---:|---:|
| 6 | 33.33 | 52 |

## GROUP BY: um resumo por grupo

`GROUP BY` separa as linhas em grupos e aplica a função em cada um. Aqui, um total por produto:

```sql
SELECT produto,
       COUNT(*)   AS qtd,
       SUM(valor) AS total
FROM pedidos
GROUP BY produto;
```

**Resultado:** um resultado por produto

| produto | qtd | total |
|---|---:|---:|
| Fone | 2 | 240 |
| Mouse | 1 | 60 |
| Teclado | 1 | 200 |
| Monitor | 1 | 900 |

## HAVING: filtrar depois de agrupar

```sql
SELECT produto, SUM(valor) AS total
FROM pedidos
GROUP BY produto
HAVING SUM(valor) > 150;
```

**Resultado:** só os grupos acima de 150

| produto | total |
|---|---:|
| Fone | 240 |
| Teclado | 200 |
| Monitor | 900 |

> 💡 **WHERE ou HAVING?**
>
> `WHERE` filtra as *linhas* antes de agrupar. `HAVING` filtra os *grupos* depois de somar ou contar. Se a condição usa `SUM`, `COUNT` etc., é HAVING.

---

<p align="center"><a href="05-order-by-e-limit.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="07-join.md">Próximo →</a></p>
