<h1 align="center">SQL do Zero, Sem Jargão</h1>

<p align="center">
  <strong>Aprenda a consultar dados em português claro, mesmo sem nunca ter visto um banco de dados.</strong><br>
  Cada comando vem com a tradução, um exemplo e o resultado que ele produz. Grátis e aberto.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/N%C3%ADvel-Iniciante-2ea44f?style=flat-square" alt="Nível: Iniciante">
  <img src="https://img.shields.io/badge/Sem-Enrola%C3%A7%C3%A3o-orange?style=flat-square" alt="Sem enrolação">
  <img src="https://img.shields.io/badge/Consulta-R%C3%A1pida-blue?style=flat-square" alt="Consulta rápida">
  <img src="https://img.shields.io/badge/100%25-em_Portugu%C3%AAs-009c3b?style=flat-square" alt="100% em português">
  <img src="https://img.shields.io/badge/Pre%C3%A7o-gr%C3%A1tis-0B6E75?style=flat-square" alt="Grátis">
</p>

<p align="center">
  <a href="https://allanrodrigues01.github.io/sql-do-zero-sem-jargao/">
    <img src="https://img.shields.io/badge/Ler_como_site-%E2%86%92-0B6E75?style=for-the-badge" alt="Ler como site">
  </a>
  &nbsp;
  <a href="guia/01-o-que-e-sql.md">
    <img src="https://img.shields.io/badge/Ler_aqui_no_GitHub-%F0%9F%93%96-555555?style=for-the-badge" alt="Ler aqui no GitHub">
  </a>
</p>

---

## Veja como é

```sql
SELECT nome               -- mostre a coluna "nome"
FROM clientes             -- da tabela "clientes"
WHERE cidade = 'Recife';  -- somente onde a cidade for Recife
```

**Resultado:** Ana e Elisa.

É isso: SQL é pedir dados quase em frases. O guia inteiro é escrito desse jeito.

---

## Por que mais um material de SQL?

Porque muita gente desiste antes da primeira consulta útil:

- O curso começa falando de "álgebra relacional", "tuplas" e "normalização".
- Os exemplos mostram o comando, mas **não mostram o que ele devolve**.
- Tudo está em inglês ou num português acadêmico que ninguém fala no trabalho.

Este guia faz diferente:

| Como costuma ser ensinado | Como este guia explica |
|---|---|
| "Projeção de atributos de uma relação" | `SELECT` = **mostre** estas colunas |
| "Predicado de seleção sobre tuplas" | `WHERE` = **somente onde** a condição for verdade |
| "Junção natural entre entidades" | `JOIN` = **junte** os pedidos com o nome de quem comprou |
| "Funções de agregação sobre conjuntos" | `COUNT`, `SUM`, `AVG` = **conte, some, tire a média** |
| Exemplo solto, sem resultado | Todo exemplo vem com **a tabela de resultado** |
| Teoria primeiro, prática depois | Na primeira sessão você já está **rodando consultas** no navegador |

---

## O que tem no guia

13 capítulos curtos, em ordem de dificuldade:

| # | Capítulo | O que você aprende |
|---:|---|---|
| 1 | [O que é SQL](guia/01-o-que-e-sql.md) | A analogia com a planilha que faz tudo fazer sentido |
| 2 | [Laboratório](guia/02-laboratorio.md) | Um script pronto para colar e ter dados de treino em 1 minuto |
| 3 | [SELECT](guia/03-select.md) | Escolher colunas, dar apelidos (`AS`) e tirar repetições (`DISTINCT`) |
| 4 | [WHERE](guia/04-where.md) | Filtrar com `=`, `AND`, `OR`, `IN`, `BETWEEN`, `LIKE`, e entender o `NULL` |
| 5 | [ORDER BY e LIMIT](guia/05-order-by-e-limit.md) | Ordenar e pegar só o "top 5" |
| 6 | [Contar, somar e agrupar](guia/06-contar-somar-agrupar.md) | `COUNT`, `SUM`, `AVG`, `GROUP BY`, e quando usar `HAVING` |
| 7 | [JOIN](guia/07-join.md) | `INNER` e `LEFT JOIN`, e o truque de achar "quem nunca comprou" |
| 8 | [Inserir, atualizar e apagar](guia/08-inserir-atualizar-apagar.md) | `INSERT`, `UPDATE` e `DELETE`, com hábitos que evitam desastres |
| 9 | [Criar tabelas](guia/09-criar-tabelas.md) | Tipos de dados, chave primária e chave estrangeira |
| 10 | [Erros comuns](guia/10-erros-comuns.md) | Os 7 tropeços mais frequentes e a ordem certa das cláusulas |
| 11 | [Exercícios](guia/11-exercicios.md) | 8 desafios com gabarito, do fácil ao difícil |
| 12 | [Cola e glossário](guia/12-cola-e-glossario.md) | Os comandos essenciais numa página, para consulta rápida |
| 13 | [Como praticar](guia/13-como-praticar.md) | Ferramentas grátis no navegador e um roteiro de 4 semanas |

---

## Como começar

1. Abra o [SQLite Online](https://sqliteonline.com) no navegador. Não precisa instalar nada.
2. Cole o script do [capítulo 2 (Laboratório)](guia/02-laboratorio.md) e clique em **Run**.
3. Siga os capítulos na ordem, digitando cada exemplo e comparando com o resultado mostrado.

Com 20 a 30 minutos por dia, o [roteiro de 4 semanas](guia/13-como-praticar.md) cobre do primeiro `SELECT` até juntar tabelas.

Prefere ler numa página só, com índice lateral e botão de copiar? Use a [versão em site](https://allanrodrigues01.github.io/sql-do-zero-sem-jargao/). Pelo navegador, ela também pode ser salva em PDF (Ctrl + P → "Salvar como PDF").

---

## Perguntas frequentes

<details>
<summary><strong>Para quem é este material?</strong></summary>

Para quem **nunca mexeu com banco de dados**: quem usa Excel no trabalho e quer ir além, quem trabalha na área administrativa, comercial ou financeira, quem quer começar em análise de dados ou quem precisa "tirar um relatório do sistema" sem depender de ninguém. Se você já escreve `JOIN` e `GROUP BY` com tranquilidade, este guia é básico demais para você.

</details>

<details>
<summary><strong>Preciso instalar algum programa?</strong></summary>

Não. Você pratica direto no navegador, em sites gratuitos como o SQLite Online ou o DB Fiddle. Se um dia quiser algo local, o capítulo 13 indica um programa gratuito e leve.

</details>

<details>
<summary><strong>Os exemplos funcionam em qual banco de dados?</strong></summary>

Em SQLite, PostgreSQL e MySQL. Onde o SQL Server é diferente (como no `TOP` no lugar do `LIMIT`), o guia avisa.

</details>

---

<p align="center">Se o guia te ajudou, deixe uma ⭐ no repositório: isso ajuda outras pessoas a encontrá-lo.</p>
