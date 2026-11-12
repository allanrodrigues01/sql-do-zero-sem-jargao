# 8. Inserir, atualizar e apagar

Até aqui só lemos dados. Estes três comandos *alteram* o banco.

```sql
-- Inserir uma linha nova
INSERT INTO clientes (id, nome, cidade, idade)
VALUES (7, 'Gustavo', 'Salvador', 28);

-- Atualizar linhas existentes
UPDATE clientes
SET cidade = 'Olinda'
WHERE id = 5;

-- Apagar linhas
DELETE FROM pedidos
WHERE id = 102;
```

> ⚠️ **Sem WHERE, vale para a tabela inteira**
>
> `UPDATE clientes SET cidade = 'Olinda';` muda a cidade de *todos* os clientes. `DELETE FROM pedidos;` apaga *todos* os pedidos. Não há botão de desfazer por padrão.

## Hábitos que evitam desastres

1. Escreva primeiro um `SELECT` com o mesmo `WHERE` e confira quais linhas aparecem.
2. Só então troque o `SELECT` por `UPDATE` ou `DELETE`.
3. Em bancos de trabalho, faça backup antes e peça a alguém experiente para revisar.
4. Se o seu banco permite, use transações: `BEGIN;` abre, `ROLLBACK;` desfaz, `COMMIT;` confirma.

Se você executar esses exemplos no laboratório, seus dados vão diferir dos das seções anteriores. Basta recriar as tabelas com o script da seção 2.

---

<p align="center"><a href="07-join.md">← Anterior</a> · <a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="09-criar-tabelas.md">Próximo →</a></p>
