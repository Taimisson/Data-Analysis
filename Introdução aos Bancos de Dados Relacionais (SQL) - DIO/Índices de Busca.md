# ANÁLISE DO PLANO DE EXECUÇÃO

- Ela nos permite examinar as operações realizadas, as tabelas acessadas, os índices utilizados e outras informações importantes para identificar possíveis melhorias de desempenho.

```
EXPLAIN
    SELECT *
    FROM {{tabela}}

...
```

* select_type:"SIMPLE", "SUBQUERY", "JOIN"
* table.
* type: "ALL", "INDEX" entre outros
* possible_keys: Os Índices possíveis que podem ser utilizados na operação
* Key: O índice utilizado na operação, se aplicável.
* Key_len: O comprimento do indice utilizado.
* Ref: As colunas ou constantes usadas para acessar o índice
* Rows

```
EXPLAIN
	SELECT * FROM usuarios WHERE email = "laura@teste.com"
    
```

```
EXPLAIN
	SELECT * FROM usuarios WHERE email = "laura@teste.com"
    
```

```
EXPLAIN
	SELECT * FROM usuarios WHERE nome = "Laura"
```

# ÍNDICES DE BUSCA

- Esses recursos são fundamentais para melhorar o desempenho das consultas e otimizar a recuperação de informações em banco de dados.

```
CREATE INDEX {{nome_index}}
ON {{tabela}}({{coluna1, coluna2...}})
```