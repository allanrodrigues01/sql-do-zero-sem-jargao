# 1. O que é SQL

Pense numa planilha de Excel. Ela tem colunas com títulos (nome, cidade, idade) e linhas com os dados de cada pessoa. Um **banco de dados relacional** é um conjunto de planilhas assim, guardadas num programa que aguenta milhões de linhas e vários usuários ao mesmo tempo.

**SQL** (Structured Query Language, “linguagem de consulta estruturada”) é o idioma que você usa para pedir coisas a esse banco: “me mostre”, “some”, “adicione”, “apague”. Funciona em PostgreSQL, MySQL, SQL Server, Oracle, SQLite e outros, com pequenas diferenças de dialeto.

## Vocabulário mínimo

| No banco | Na planilha | Exemplo |
|---|---|---|
| **Tabela** | Uma aba | `clientes` |
| **Coluna** (campo) | Título de coluna | `nome`, `idade` |
| **Linha** (registro) | Uma linha | Os dados da Ana |
| **Chave primária** | Um código único por linha | `id` |
| **Consulta** (query) | Um filtro/relatório | Um `SELECT` |

> 💡 **Uma diferença importante**
>
> Na planilha você clica e edita. No SQL você *escreve o que quer* e o banco decide como buscar. Você descreve o resultado, não o caminho.

---

<p align="center"><a href="../README.md#o-que-tem-no-guia">Índice</a> · <a href="02-laboratorio.md">Próximo →</a></p>
