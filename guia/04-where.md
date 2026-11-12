# 4. WHERE: filtrar linhas

`WHERE` significa “somente onde”. Ele escolhe quais linhas aparecem.

```sql
SELECT nome, cidade
FROM clientes
WHERE cidade = 'São Paulo';
```

**Tabela `clientes`** (linhas escolhidas em negrito)

| id | nome | cidade | idade |
|---:|---|---|---:|
| 1 | Ana | Recife | 30 |
| **2** | **Bruno** | **São Paulo** | **25** |
| **3** | **Carla** | **São Paulo** | **41** |
| 4 | Diego | Curitiba | 17 |
| 5 | Elisa | Recife | 35 |
| 6 | Fábio | Curitiba | 52 |

**Resultado:**

| nome | cidade |
|---|---|
| Bruno | São Paulo |
| Carla | São Paulo |

> ⚠️ **Texto vai entre aspas simples**
>
> Use `'São Paulo'`, nunca aspas duplas. Números ficam sem aspas: `idade = 30`.

## Os operadores mais usados

| Operador | Significa | Exemplo |
|---|---|---|
| `=`   `<>` | igual / diferente | `cidade <> 'Recife'` |
| `>` `<` `>=` `<=` | maior, menor… | `idade >= 18` |
| `AND` | as duas condições juntas | `idade >= 18 AND cidade = 'Recife'` |
| `OR` | uma ou outra | `cidade = 'Recife' OR cidade = 'Curitiba'` |
| `IN` | está numa lista | `cidade IN ('Recife', 'Curitiba')` |
| `BETWEEN` | entre dois valores (inclusive) | `idade BETWEEN 25 AND 35` |
| `LIKE` | texto que combina com um padrão | `nome LIKE 'A%'` |
| `IS NULL` | está vazio | `cidade IS NULL` |

```sql
SELECT nome, idade
FROM clientes
WHERE idade BETWEEN 25 AND 35;
```

**Resultado:** Ana 30, Bruno 25, Elisa 35

| nome | idade |
|---|---:|
| Ana | 30 |
| Bruno | 25 |
| Elisa | 35 |

No `LIKE`, o `%` vale por “qualquer coisa”. `'A%'` é “começa com A”, `'%a'` é “termina com a”, `'%li%'` é “contém li”.

> ⚠️ **O vazio se chama NULL**
>
> `NULL` significa “sem valor / desconhecido”. Ele não é zero nem texto vazio. Por isso `cidade = NULL` nunca funciona; o correto é `cidade IS NULL` ou `IS NOT NULL`.

---

<p align="center"><a href="03-select.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="05-order-by-e-limit.md">Próximo →</a></p>
