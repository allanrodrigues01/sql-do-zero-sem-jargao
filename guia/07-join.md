# 7. JOIN: juntar tabelas

Bancos dividem os dados em várias tabelas para não repetir informação. Em vez de escrever o nome e a cidade da Ana em cada pedido dela, o pedido guarda só o `cliente_id = 1`. O `JOIN` é o que junta as duas de volta, casando o `id` do cliente com o `cliente_id` do pedido.

## INNER JOIN: só quem tem correspondência

```sql
SELECT c.nome, p.produto, p.valor
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id;
```

`c` e `p` são apelidos das tabelas, para escrever menos. A cláusula `ON` diz qual coluna casa com qual.

**Resultado:** Diego e Fábio somem: não têm pedidos

| nome | produto | valor |
|---|---|---:|
| Ana | Fone | 120 |
| Ana | Mouse | 60 |
| Bruno | Fone | 120 |
| Carla | Teclado | 200 |
| Elisa | Monitor | 900 |

## LEFT JOIN: todos da esquerda, com ou sem correspondência

```sql
SELECT c.nome, p.produto, p.valor
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id;
```

**Resultado:** Diego e Fábio aparecem, com NULL onde não há pedido

| nome | produto | valor |
|---|---|---:|
| Ana | Fone | 120 |
| Ana | Mouse | 60 |
| Bruno | Fone | 120 |
| Carla | Teclado | 200 |
| **Diego** | ***NULL*** | ***NULL*** |
| Elisa | Monitor | 900 |
| **Fábio** | ***NULL*** | ***NULL*** |

## Um truque útil: quem nunca comprou?

```sql
SELECT c.nome
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id
WHERE p.id IS NULL;
```

**Resultado:** clientes sem nenhum pedido

| nome |
|---|
| Diego |
| Fábio |

## Juntando com totais

```sql
SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.nome;
```

**Resultado:** total gasto por cliente

| nome | total_gasto |
|---|---:|
| Ana | 180 |
| Bruno | 120 |
| Carla | 200 |
| Elisa | 900 |

> 💡 **Regra prática**
>
> Quer só o que existe nas duas tabelas? `INNER JOIN`. Quer manter todos de uma tabela mesmo sem correspondência? `LEFT JOIN` dessa tabela.

---

<p align="center"><a href="06-contar-somar-agrupar.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="08-inserir-atualizar-apagar.md">Próximo →</a></p>
