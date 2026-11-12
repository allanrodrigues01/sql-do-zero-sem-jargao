# 11. Exercícios

Tente resolver cada um no laboratório *antes* de abrir a resposta. Errar e corrigir é onde o aprendizado acontece.

<details>
<summary><strong>1. Mostre o nome e a idade de todos os clientes. (fácil)</strong></summary>

```sql
SELECT nome, idade
FROM clientes;
```

</details>

<details>
<summary><strong>2. Mostre todas as colunas dos clientes de Curitiba. (fácil)</strong></summary>

```sql
SELECT *
FROM clientes
WHERE cidade = 'Curitiba';
```

**Resultado:**

| id | nome | cidade | idade |
|---:|---|---|---:|
| 4 | Diego | Curitiba | 17 |
| 6 | Fábio | Curitiba | 52 |

</details>

<details>
<summary><strong>3. Liste nome e idade de quem tem mais de 30 anos, do mais novo para o mais velho. (fácil)</strong></summary>

```sql
SELECT nome, idade
FROM clientes
WHERE idade > 30
ORDER BY idade ASC;
```

**Resultado:**

| nome | idade |
|---|---:|
| Elisa | 35 |
| Carla | 41 |
| Fábio | 52 |

</details>

<details>
<summary><strong>4. Quantos pedidos existem? (fácil)</strong></summary>

```sql
SELECT COUNT(*) AS total_pedidos
FROM pedidos;
```

**Resultado:**

| total_pedidos |
|---:|
| 5 |

</details>

<details>
<summary><strong>5. Qual o cliente mais velho? (médio)</strong></summary>

```sql
SELECT nome, idade
FROM clientes
ORDER BY idade DESC
LIMIT 1;
```

**Resultado:**

| nome | idade |
|---|---:|
| Fábio | 52 |

</details>

<details>
<summary><strong>6. Mostre o total gasto por cliente (nome e soma). (médio)</strong></summary>

```sql
SELECT c.nome, SUM(p.valor) AS total
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.nome;
```

**Resultado:** resultado (a ordem pode variar)

| nome | total |
|---|---:|
| Ana | 180 |
| Bruno | 120 |
| Carla | 200 |
| Elisa | 900 |

</details>

<details>
<summary><strong>7. Quais clientes nunca fizeram pedido? (médio)</strong></summary>

```sql
SELECT c.nome
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id
WHERE p.id IS NULL;
```

**Resultado:**

| nome |
|---|
| Diego |
| Fábio |

</details>

<details>
<summary><strong>8. Desafio: quais clientes gastaram mais de 150 no total? (desafio)</strong></summary>

```sql
SELECT c.nome, SUM(p.valor) AS total
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.nome
HAVING SUM(p.valor) > 150;
```

**Resultado:**

| nome | total |
|---|---:|
| Ana | 180 |
| Carla | 200 |
| Elisa | 900 |

</details>

---

<p align="center"><a href="10-erros-comuns.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="12-cola-e-glossario.md">Próximo →</a></p>
