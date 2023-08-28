# FUNÇÕES AGREGADAS

* COUNT: Conta o número de registros.
* SUM: Soma os valores de uma coluna numérica.
* AVG: Calcula a média dos valores de uma coluna numérica.
* MIN: Retorna o valor mínimo de uma coluna.
* MAX: Retorna o valor máximo de uma coluna.

```
SELECT COUNT(*) as total_usuarios FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;
```

```
SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade
FROM usuarios;
```

# AGRUPAMENTO DE RESULTADOS

```
SELECT ....
FROM ....
GROUP BY
```

# ORDENAÇÃO DE RESULTADOS

```
SELECT ...
FROM ...
ORDER BY
```