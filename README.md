# SQL do zero, sem jargão

Guia introdutório de SQL em português para quem nunca trabalhou com banco de dados. Cada comando é explicado com uma tradução direta, um exemplo e a tabela de resultado que ele produz.

```sql
SELECT nome               -- mostre a coluna "nome"
FROM clientes             -- da tabela "clientes"
WHERE cidade = 'Recife';  -- somente onde a cidade for Recife
```

**Leia online:** [allanrodrigues01.github.io/sql-do-zero-sem-jargao](https://allanrodrigues01.github.io/sql-do-zero-sem-jargao/)

## Capítulos

1. [O que é SQL](guia/01-o-que-e-sql.md)
2. [Laboratório: dados de treino](guia/02-laboratorio.md)
3. [SELECT: consultar dados](guia/03-select.md)
4. [WHERE: filtrar linhas](guia/04-where.md)
5. [ORDER BY e LIMIT](guia/05-order-by-e-limit.md)
6. [Contar, somar e agrupar](guia/06-contar-somar-agrupar.md)
7. [JOIN: juntar tabelas](guia/07-join.md)
8. [Inserir, atualizar e apagar](guia/08-inserir-atualizar-apagar.md)
9. [Criar tabelas](guia/09-criar-tabelas.md)
10. [Erros comuns](guia/10-erros-comuns.md)
11. [Exercícios](guia/11-exercicios.md)
12. [Folha de cola e glossário](guia/12-cola-e-glossario.md)
13. [Como praticar e roteiro de estudo](guia/13-como-praticar.md)

## Como usar

Os exemplos usam duas tabelas pequenas, `clientes` e `pedidos`. Para acompanhar:

1. Abra um editor SQL no navegador, como o [SQLite Online](https://sqliteonline.com) ou o [DB Fiddle](https://www.db-fiddle.com).
2. Execute o script [`dados/laboratorio.sql`](dados/laboratorio.sql) para criar as tabelas.
3. Siga os capítulos em ordem e compare o resultado de cada consulta com o que o guia mostra.

O capítulo 13 traz um roteiro de quatro semanas, com 20 a 30 minutos de estudo por dia.

## Compatibilidade

A sintaxe funciona em SQLite, PostgreSQL e MySQL. As diferenças do SQL Server, como `TOP` no lugar de `LIMIT`, são indicadas no texto.

## Estrutura

```
guia/       capítulos em Markdown
dados/      script do laboratório
index.html  versão em página única (publicada no GitHub Pages)
```

## Contribuições

Encontrou um erro ou tem uma sugestão? Abra uma [issue](https://github.com/allanrodrigues01/sql-do-zero-sem-jargao/issues).
