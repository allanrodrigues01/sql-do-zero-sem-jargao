# 9. Criar tabelas

```sql
CREATE TABLE pedidos (
  id         INTEGER PRIMARY KEY,
  cliente_id INTEGER NOT NULL,
  produto    VARCHAR(50) NOT NULL,
  valor      DECIMAL(10,2) DEFAULT 0,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
```

Cada linha dentro dos parênteses é uma coluna: **nome**, **tipo** e, se quiser, **regras**.

## Tipos mais comuns

| Tipo | Guarda |
|---|---|
| `INTEGER` | números inteiros |
| `DECIMAL(10,2)` | números com casas decimais (dinheiro): até 10 dígitos, 2 depois da vírgula |
| `VARCHAR(n)` / `TEXT` | texto |
| `DATE` | datas |
| `BOOLEAN` | verdadeiro ou falso |

## Regras (constraints)

- `PRIMARY KEY`: identifica cada linha de forma única, sem repetição.
- `NOT NULL`: a coluna não pode ficar vazia.
- `UNIQUE`: não permite valores repetidos (ex.: e-mail).
- `DEFAULT`: valor usado quando você não informa nenhum.
- `FOREIGN KEY` (chave estrangeira): garante que `cliente_id` aponte para um cliente que existe.

Para mudar ou remover depois: `ALTER TABLE` (alterar a estrutura) e `DROP TABLE` (apagar a tabela inteira, com cuidado).

---

<p align="center"><a href="08-inserir-atualizar-apagar.md">← Anterior</a> · <a href="../README.md">Índice</a> · <a href="10-erros-comuns.md">Próximo →</a></p>
