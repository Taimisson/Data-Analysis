# Tipos

* Key-Value
* Documento
* Coluna
* Grafos
* Entre outros...

# Key-Value > Chave Valor

- Armazena dados como pares de chave e valor, onde cada chave é um identificador único para acessar o valor correspondente
    Exemplo de SGBD: Redis, Riak, Amazon DynamoDB
    Uso: Um site pode usar uwm banco de dados Redis para armazenar informações de sessão de usuário.

# Document > Documento

- Armazenam dados em documentos semiestruturados, geralmente em formato JSON ou BSON

    Exemplo de SGDB: MongoDB, Couchbase, Apache CouchDB
    Uso: Um catálogo de e-commerce pode usar o MongoDB para armazenar informações de produtos, como nome, descrição, preço e atributos adicionais.

# Coluna

- Armazenam dados em formato de colunas, o que permite alta escalabilidade e eficiência em determiandos tipos de consultas
    Exemplo de SGBD: Apache Cassandra, ScyllaDB, HBase
    Uso: Um sistema de registro de aplicativos pode usar o Apache Cassandra para armazenar registros de log.

# Grafo

- Armazenar e consultar dados interconectados, onde os relacionamento entre os dados são tão importantes quanto os próprios dados
    Exemplo de SGBD: Neo4j, Amazon Neptune, JanusGraph
    Uso: Uma rede social pode usar o Neo4j para armazenar os perfis dos usuários e suas conexões, permitindo consultas eficientes para encontrar amigos em comum.

