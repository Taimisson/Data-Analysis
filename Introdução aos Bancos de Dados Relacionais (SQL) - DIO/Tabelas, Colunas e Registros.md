# Tabelas

 - Ela é usada para armazenar dados de forma organizada. Cada tabela em um banco de dados relacional tem um nome único e é dividida em linhas e colunas.

 # Colunas
 
 - Uma coluna é uma estrutura dentro de uma tabela que representa um atributo específico dos dados armazenados. Cada coluna tem um nome único e um tipo de dados associado que define o tipo de informação que pode ser armazenado nela, como números, textos, datas, etc.

 # Registros

 - Um registro, também conhecido como tupla ou linha, é uma instância individual de dados em uma tabela.
 
 - Comando: CREATE TABLE
 ```
 CREATE TABLE {{nome}}
    ([{coluna}]) {[tipo]} {{opções}} COMMENT
    {{"COMENTARIO"}});
 ```

# Tipos de Dados
* Os dados podem varias muito entre os diversos SGBD, os mais comuns são:
   - Inteiro (Integer)
   - Decimal/Numérico (Decimal/Numeric)
   - Caractere/Varchar (Character/Varchar)
   - Data/Hora (Date/Time)
   - Booleano (Boolean)
   - Texto longo (Text)

# Comando: CREATE TABLE - Opções

* Restrições de valor:
   - NOT NULL
   - UNIQUE
   - DEFAULT
* Chaves primárias e estrangeiras
* Auto Incremento

```
CREATE TABLE usuarios (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT "Nome do usuário",
    email VARCHAR(100) NOT NULL UNIQUE COMMENT "e-mail do usuário",
    endereco VARCHAR(50) NOT NULL COMMENT "Endereço do usuário",
    data_nascimento DATE NOT NULL COMMENT "Data de nascimento do usuário");    
```

```
CREATE TABLE viagens.destinos (
   id INT,
   nome VARCHAR(255) NOT NULL UNIQUE COMMENT "nome do destino",
   descricao VARCHAR(255) NOT NULL COMMENT "descrição do destino"
);

CREATE TABLE viagens.reservas (
   id INT COMMENT "Identificador único da reserva",
   id_usuario INT COMMENT "Referência ao ID do usuário que fez a reserva",
   id_destino INT COMMENT "Referência ao ID do destino da reserva",
   data DATE COMMENT "Data da reserva"
   status VARCHAR(255) DEFAULT "pendente" COMMENT "Status da reserva (confirmada, pendente, cancelada, etc.)"
);
```
