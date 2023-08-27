# PROBLEMA

- Usuários com endereços longos não estão conseguindo realizar cadastro no sistema

- Opções:
* Recriar a tabela, migrar os dados e excluir a tabela anterior
* Alterar estrutura da tabela

# DROP TABLE

- O comando DROP TABLE é usado no SQL - para remover uma tabela existente de um banco de dados relacional.

Ele exclui permanentemente a tabela

```
DROP TABLE {{tabela}}
```

# ALTER TABLE

- A cláusula ALTER TABLE é usada no SQL para modificar a estrutura de uma tabela existente em um banco de dados relacional.

- Ela permite: 
* Adicionar, alterar ou excluir colunas
* Modificar as restrições, índices
* Renomear a tabela entre outras alterações

# MIGRAR DADOS

```
INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM usuarios;
```

```
DROP TABLE usuarios;
ALTER TABLE usuarios_nova RENAME usuarios;
```

```
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150);
```