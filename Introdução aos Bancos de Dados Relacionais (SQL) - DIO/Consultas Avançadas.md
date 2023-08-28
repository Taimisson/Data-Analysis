# JUNÇÕES: Joins

- São usadas no SQL para combinar dados de duas ou mais tabelas relacionadas em uma única consulta

# INNER JOIN

- Retorna apenas as linhas que têm correspondência em ambas as tabelas envolvidas na junção. A junção é feita com base em uma condição de igualdade específica na cláusula ON.

```
SELECT *
FROM TABELA1
INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

```
SELECT * from usuarios us 
INNER JOIN reservas rs ON us.id = rs.id_usuario
INNER JOIN destinos ds ON rs.id_destino = ds.id;
```

# LEFT JOIN

- Retorna todas as linhas da tabela à esquerda da junção e as linhas correspondentes da tabela à direita. Se não houver correspondência, os valores da tabela à direita serão NULL.

```
SELECT *
FROM tabela1
LEFT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

# RIGHT JOIN

- Retorna todas as linhas da tabela à direita da junção e as linhas correspondentes da tabela à esquerda. Se não houver correspondência, os valores da tabela à esquerda serão NULL.

```
SELECT *
FROM tabela1
RIGHT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

# FULL JOIN

- Retorna todas as linhas de ambas as tabelas envolvidas na junção, combinando-as com base em uma condição de igualdade. Se não houver correspondência, os valores ausentes serão preenchidos com NULL.

```
SELECT *
FROM tabela1
FULL JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

/// MariaDB não tem comando FULL JOIN

# SUB CONSULTAS

- Elas permitem realizar consultas mais complexas permitindo que você use o resultado de uma consulta como entrada para outra consulta.

- As subconsultas podem ser usadas em várias partes de uma consulta:
* SELECT
* FROM
* WHERE
* HAVING
* JOIN.

```
SELECT * FROM destinos
WHERE id NOT IN (SELECT id_destino FROM reservas);
```

```
SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas FROM usuarios;

```