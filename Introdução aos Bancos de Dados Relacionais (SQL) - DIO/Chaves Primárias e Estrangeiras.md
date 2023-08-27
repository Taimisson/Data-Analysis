# CHAVES PRIMÁRIAS

* Identifica Exclusivamente
* Não pode conter valores nulos (NULL)
* Uma tabela pode ter apenas uma chave primária.

```
CREATE TABLE {{tabela}}
( id PRIMARY KEY AUTOINCREMENT, 
...);

----

ALTER TABLE {{tabela}}
MODIFY COLUMN ID INT PRIMARY KEY;
```

# CHAVES ESTRANGEIRAS

- Ela é usada para estabelecer e manter a integridade dos dados entre tabelas relacionadas

* Pode ser nula (NOT NULL); ** registro órfão
* É possível ter mais de uma (ou nenhuma) em uma tabela.

```
CREATE TABLE {{tabela}} (
    id INT PRIMARY KEY,
    chave_estrangeira INT,

    FOREIGN KEY (chave_estrangeira) REFERENCES {{outra tabela}} (id)
);
```

```
ALTER TABLE {{tabela}}
ADD CONSTRAINT {{nome_constraint}}
FOREIGN KEY (ID_)
REFERENCES {{outra_tabela}} (ID)
```

# CHAVES ESTRANGEIRAS - RESTRIÇÕES

* ON DELETE especifica o que acontece com os registros dependentes quando um registro pai é excluído.
* ON UPDATE define o comportamento dos registros dependentes quando um registro pai é atualizado.
* CASCADE, SET NULL, SET DEFAULT e RESTRICT

```
ALTER TABLE usuarios 
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);
```