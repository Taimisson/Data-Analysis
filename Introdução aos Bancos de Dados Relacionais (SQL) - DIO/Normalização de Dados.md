#  Problema:

```
id nome endereco
1 | João  | Rua A, 123, Cidade X, Estado Y 
2 | Maria | Rua B, 456, Cidade Y, Estado Z
3 | Pedro | Avenida C, 879, Cidade X, Estado Y

Como buscar todos os usuários da Cidade X?

```

- A normalização de dados é um processo no qual se organiza e estrutura um banco de dados relacional de forma a eliminar redundâncias e anomalias, garantindo a consistência e integridade dos dados.

# FORMAS NORMAIS

- 1FN: Atomicidae de Dados

* O campo "endereco" contém múltiplos valores, como rua, número, cidade e estado. Para atingir a 1FN, precisamos dividir o campo "endereco" em colunas separadas.

- 2FN:

* A 2FN estabelece que uma tabela deve estar na 1FN.
* Todos os atributos não chave devem depender totalmente da chave primária.

Dica: Se sua tabela tem uma chave primária simples não existe a possibilidade de termos dependência parcial e por tanto ela já se encontra na 2FN.

- 3FN:

* Uma tabela deve estar na 2FN.
* Nehuma coluna não-chave depender de outra coluna não-chave.

Nosso exemplo: Relação Estado -> Cidade



