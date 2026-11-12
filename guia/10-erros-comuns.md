# 10. Erros comuns de iniciante

- **Aspas erradas.** Texto usa aspas simples: `'Recife'`.
- **Esquecer o WHERE** em `UPDATE` e `DELETE`.
- **Comparar com NULL usando =.** Use `IS NULL`.
- **Coluna solta no GROUP BY.** Todo campo do `SELECT` que não é função de agregação precisa estar no `GROUP BY`.
- **Vírgula sobrando ou faltando** na lista de colunas. A última coluna não leva vírgula.
- **Confundir WHERE com HAVING.** Veja a seção 6.
- **Escrever na ordem errada.** A ordem é fixa:

```sql
SELECT   colunas
FROM     tabela
JOIN     outra_tabela ON ...
WHERE    filtro_de_linhas
GROUP BY grupos
HAVING   filtro_de_grupos
ORDER BY ordenacao
LIMIT    quantidade;
```

Ler a mensagem de erro ajuda mais do que parece: quase sempre ela aponta a linha ou a palavra onde o banco se perdeu.

---

<p align="center"><a href="09-criar-tabelas.md">← Anterior</a> · <a href="../README.md">Índice</a> · <a href="11-exercicios.md">Próximo →</a></p>
