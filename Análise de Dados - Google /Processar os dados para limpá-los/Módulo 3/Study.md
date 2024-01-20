# Módulo 3 - Limpeza de dados com o SQL

---

# Como usar o SQL para limpar dados

## Usar SQL como analista de dados júnior

Nesta leitura, você aprenderá mais sobre como decidir quando usar SQL, ou Linguagem de Consulta Estruturada. Como analista de dados, você terá a tarefa de lidar com inúmeros dados, e o SQL é uma das ferramentas que pode ajudar a tornar seu trabalho muito mais fácil. SQL é a principal maneira pela qual os analistas de dados extraem dados de bancos de dados. Como analista de dados, você trabalhará com bancos de dados o tempo todo, e é por isso que o SQL representa uma habilidade tão importante. Vamos acompanhar como um analista de dados júnior usa o SQL para resolver uma tarefa de negócios.

## A tarefa de negócios e o contexto

Neste exemplo, o analista de dados júnior trabalha para uma empresa de mídias sociais. Um novo modelo de negócios foi implantado em 15 de fevereiro de 2020 e a empresa pretende entender como seu crescimento de usuários se compara ao ano anterior. Especificamente, o analista de dados foi orientado a descobrir quantos usuários ingressaram desde 15 de fevereiro de 2020.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/IJOWRlghSYqTlkZYITmK_g_c746d43c945e428b961aa296713a0c93_Screen-Shot-2021-01-25-at-1.45.29-PM.png?expiry=1705881600000&hmac=DrwtH88Bi0xRUjjYUu6XQZbRyCbjnE7cM3RR2xJo1Aw

## Funções e fórmulas de planilhas ou consultas SQL?

Antes que possa resolver essa questão, o analista de dados precisa escolher qual ferramenta usar. Primeiro, precisa pensar sobre onde os dados se encontram. Se estiverem armazenados em um banco de dados, o SQL é a melhor ferramenta para o trabalho, mas se estiverem armazenados em uma planilha, a análise deverá ser realizada nessa mesma planilha. Nesse cenário, seria possível criar uma tabela dinâmica dos dados e aplicar fórmulas e filtros específicos aos dados até receberem o número de usuários que ingressaram após 15 de fevereiro. Não é um processo muito complicado, mas envolveria muitas etapas.

Nesse caso, os dados são armazenados em um banco de dados e, portanto, será necessário trabalhar com SQL. O analista de dados sabe que pode obter os mesmos resultados com uma única consulta SQL:

SELECT
	COUNT(DISTINCT user_id) AS count_of_unique_users
FROM
	table
WHERE
	join_date >= ‘2020-02-15’

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/rFCIUmoiTZ2QiFJqIu2dVQ_eed3b2c22b5d4178850baaae6df6ac10_Screen-Shot-2020-12-30-at-18.02.34.png?expiry=1705881600000&hmac=sOQAZiYvSYSnfiu1ImvHR8-6HZXL2QiyMMEs6tA-siU

Planilhas e SQL têm suas vantagens e desvantagens:

| Recursos das planilhas | Recursos dos bancos de dados SQL |
| --- | --- |
| Conjuntos de dados menores | Conjuntos de dados maiores |
| Inserir dados manualmente | Acessar tabelas em um banco de dados |
| Criar gráficos e visualizações no mesmo programa | Preparar dados para análise posterior em outro software |
| Verificação ortográfica integrada e outras funções úteis | Funcionalidade rápida e poderosa |
| Melhor ao trabalhar sozinho em um projeto | Excelente para trabalho colaborativo e consultas de rastreamento executadas por todos os usuários |

Neste quesito, o local onde os dados se encontram definirá a ferramenta a ser utilizada. Se você estiver trabalhando com dados que já estão em uma planilha, é mais provável que realize sua análise nessa própria planilha. Se estiver trabalhando com dados armazenados em um banco de dados, o SQL será a melhor ferramenta para suas análises. Você aprenderá mais sobre o SQL, de modo a estar pronto para enfrentar qualquer problema de negócios com a melhor ferramenta possível.

## Dialetos SQL e seus usos

Nesta leitura, você aprenderá mais sobre os dialetos SQL e alguns de seus diferentes usos. Como uma rápida atualização, **Structured Query Language** (Linguagem de consulta estruturada), ou SQL, é uma linguagem usada para conversar com bancos de dados. Aprender SQL pode ser muito semelhante à aquisição de um novo idioma – incluindo o fato de que os idiomas costumam contemplar dialetos diferentes. Alguns produtos de banco de dados têm sua própria variante de SQL, e essas diferentes variedades de dialetos SQL o ajudam a se comunicar com cada produto do banco de dados.

Esses dialetos serão diferentes de empresa para empresa e podem mudar com o tempo se a empresa migrar para outro sistema de banco de dados. Portanto, muitos analistas começam com o SQL padrão e, posteriormente, ajustam o dialeto que usam com base no banco de dados com o qual estão trabalhando. O SQL padrão funciona com a maioria dos bancos de dados e requer um pequeno número de alterações de sintaxe para se adaptar a outros dialetos.

Como analista de dados júnior, é importante saber que existem pequenas diferenças entre os dialetos. Mas, ao dominar o SQL padrão, que é o dialeto utilizado no trabalho neste programa, você estará preparado para usar o SQL em qualquer banco de dados.

## Mais Informações

Talvez você não precise conhecer todos os dialetos SQL, mas é útil saber que esses dialetos diferentes existem. Se estiver interessado em saber mais sobre os dialetos SQL e quando são usados, você pode conferir estes recursos para obter mais informações:

- Blog do LearnSQL. **[O que é um dialeto SQL e qual você deve aprender?](https://learnsql.com/blog/what-sql-dialect-to-learn/)**
- Artigo da ajuda de teste de software. **[Diferenças entre SQL vs. MySQL vs. SQL Server](https://www.softwaretestinghelp.com/sql-vs-mysql-vs-sql-server/)**
- Blog do Datacamp. **[SQL Server, PostgreSQL, MySQL... Qual](https://www.datacamp.com/community/blog/sql-differences) [é](https://learnsql.com/blog/what-sql-dialect-to-learn/) [diferença? Por onde começo?](https://www.datacamp.com/community/blog/sql-differences)** Observe que há um erro neste artigo do blog. A tabela de comparação informa incorretamente que o SQLite usa subconsultas em vez de funções de janela. Consulte a documentação **[SQLite Window Functions](https://sqlite.org/windowfunctions.html)** para esclarecimentos adequados.
- Tutorial do SQL Tutorial. **[O que é SQL](https://www.sqltutorial.org/what-is-sql/)?**

---

# Aprenda consultas básicas de SQL

- Consultas SQL muito utilizadas

SELECT (which data) FROM (name_table)

```sql
SELECT
	name,
	city
FROM
customer_data.customer_address
```

- Inserir dados

```sql
INSERT INTO customer_data.customer_adress
	(customer_id, adress, city, state, zipcode, country)
VALUES
	(2645, '333 SQL Road', 'Jackson', 'MI', 49202, 'US')
```

- Atualizar os dados

```sql
UPDATE customer_data.customer_adress
SET adress = '123 New Adress'
WHERE customer_id = 2645
```

## Questionar

A tabela de *clientes* contém as seguintes colunas: *CustomerId*, *Nome*, *Sobrenome*, Empresa, *Endereço*, *Cidade*, *Estado*, *País*, *Caixa postal*, *Telefone*, *Fax, E-mail*, e *SuporteRepId*.
Crie uma consulta para retornar as colunas *LastName* e *Country* desta tabela apenas para clientes na Alemanha.

`+------------+---------+
| LastName   | Country |
+------------+---------+
| Köhler     | Germany |
| Schneider  | Germany |
| Zimmermann | Germany |
| Schröder   | Germany |
+------------+---------+`

```sql
SELECT 
    LastName,
    Country
FROM customers
WHERE Country = 'Germany'

1

```

> “Be super curious about whatever data set that you are given.” - Evan
> 

### Limpeza de variáveis de string com SQL

- Uso do DISTINCT

```sql
SELECT
	DISTINCT customer_id
FROM
	customer_data.costumer_adress
```

- Text Strings
    - LEN
    - SUBSTR
    
    ```sql
    SELECT
    	LENGTH(country) as letters_in_country
    FROM
    	costumer_data.customer_adress
    
    SELECT
    	country
    FROM
    	customer_data.customer_adress
    WHERE
    	LENGTH(country) > 2
    ```
    
- TRIM Function

```sql
SELECT
	DISTINCT customer_id
FROM
	customer_data.customer_adress
WHERE
	TRIM(state) = 'OH'
	
```

## Questionar

Em uma consulta, se você usar a função LENGTH, SUBSTR ou TRIM em uma cláusula WHERE, poderá selecionar dados com base em uma condição de string. Se estiver tendo problemas com isso, talvez seja necessário relembrar como você criou uma cláusula WHERE com uma condição numérica. O conceito é o mesmo, então tente o seguinte:

A tabela *invoices* contém as seguintes colunas: *InvoiceId*, *CustomerId*, *InvoiceDate*, *BillingAddress*, *BillingCity*, *BillingState*, *BillingCountry*, *BillingPostalCode*, *Total*.
Crie uma consulta para retornar as colunas *CustomerId*, *InvoiceDate* e *Total* desta tabela apenas para totais de fatura acima de US$ 20.

```sql
SELECT
    CustomerId,
    InvoiceDate,
    Total
FROM
    invoices
WHERE
    Total > 20
```

`+------------+---------------------+-------+
| CustomerId | InvoiceDate         | Total |
+------------+---------------------+-------+
|         45 | 2010-02-18 00:00:00 | 21.86 |
|         46 | 2011-04-28 00:00:00 | 21.86 |
|         26 | 2012-08-05 00:00:00 | 23.86 |
|          6 | 2013-11-13 00:00:00 | 25.86 |
+------------+---------------------+-------+`

### Visão Geral da Atividade

- **Contexto:** Analista de dados em uma concessionária de carros usados.
- **Objetivo:** Aprender a limpar dados usando SQL em bancos de dados.

### Passos da Atividade com Comandos SQL

1. **Criação de um Conjunto de Dados e Tabela:**
    - Criar um conjunto de dados `cars`.
    - Criar uma tabela `car_info` e importar o arquivo CSV `automobile_data`.
2. **Limpeza de Dados:**
    - **Inspecione a coluna `fuel_type`:**
        
        ```sql
        SELECT DISTINCT fuel_type FROM cars.car_info;
        
        ```
        
    - **Inspecione a coluna `length`:**
        
        ```sql
        SELECT MIN(length) AS min_length, MAX(length) AS max_length FROM cars.car_info;
        
        ```
        
    - **Preencha dados ausentes na coluna `num_of_doors`:**
        
        ```sql
        SELECT * FROM cars.car_info WHERE num_of_doors IS NULL;
        UPDATE cars.car_info SET num_of_doors = "four" WHERE make = "dodge" AND fuel_type = "gas" AND body_style = "sedan";
        
        ```
        
    - **Identifique e corrija erros na coluna `num_of_cylinders`:**
        
        ```sql
        SELECT DISTINCT num_of_cylinders FROM cars.car_info;
        UPDATE cars.car_info SET num_of_cylinders = "two" WHERE num_of_cylinders = "tow";
        
        ```
        
    - **Verifique e ajuste a coluna `compression_ratio`:**
        
        ```sql
        SELECT MIN(compression_ratio) AS min_compression_ratio, MAX(compression_ratio) AS max_compression_ratio FROM cars.car_info;
        DELETE FROM cars.car_info WHERE compression_ratio = 70;
        
        ```
        
    - **Garanta consistência na coluna `drive_wheels`:**
        
        ```sql
        SELECT DISTINCT drive_wheels FROM cars.car_info;
        UPDATE cars.car_info SET drive_wheels = TRIM(drive_wheels);
        
        ```
        

### Respostas às Perguntas

1. **Importância da Limpeza de Dados:**
    - Limpar dados é crucial para precisão e relevância nos resultados da análise.
2. **Técnica de Limpeza Mais Útil no Futuro:**
    - Automação por meio de algoritmos de aprendizado de máquina.

### Reflexão Final

- **Validação e Correção de Dados:**
    - Verificar e corrigir dados para evitar erros na análise.
    - Economiza tempo e assegura precisão.

### Aplicação Prática

- **Uso do SQL para Limpeza de Dados:**
    - Demonstração do uso do SQL em várias tarefas de limpeza de dados.

## Avaliação - Nota Recebida: 100%

**Requisito para Aprovação:** 80% ou superior

### Pergunta 1

### Funções SQL para Limpeza de Variáveis de String

- **Opções Corretas:**
    - `TRIM`
    - `SUBSTR`

### Pergunta 2

### Removendo Entradas Duplicadas e Ordenando por ID de Lista de Reprodução

- **Consulta SQL:**
    
    ```sql
    SELECT DISTINCT
        name
    FROM
        playlist
    ORDER BY
        playlist_id
    
    ```
    
- **Nome da Playlist na Linha 6:** Music Videos (vídeos musicais)

### Pergunta 3

### Verificando Títulos de Álbuns com Menos de 4 Caracteres

- **Consulta SQL:**
    
    ```sql
    SELECT
        album_id, title
    FROM
        album
    WHERE
        length(title) < 4
    
    ```
    
- **ID do Álbum na Linha 3:** 182

### Pergunta 4

### Recuperando as Primeiras 3 Letras do Nome de Cada País

- **Consulta SQL:**
    
    ```sql
    SELECT
        customer_id,
        SUBSTR(country, 1, 3) AS new_country
    FROM
        customer
    ORDER BY
        country
    
    ```
    
- **ID do Cliente na Linha 2:** 55

---

# Transformando dados

- CAST() - Can be used to convert anything from one data type to another

```sql
SELECT
	CAST(purchase_price AS FLOAT64)
FROM
	customer_data.customer_purchase
ORDER BY
	CAST(purchase_price AS FLOAT64) DESC
```

- Between

```sql
SELECT
	CAST(date AS date) AS date_only,
	purchase_price
FROM
	customer_data.customer_purchase
WHERE
	date BETWEEN '2020-12-01' AND '2020-12-31'
```

- CONCAT()

```sql
SELECT
	CONCAT(product_code, product_color) AS new_product_code
FROM
	customer_data.customer_purchase
WHERE
	product = 'couch'
	
```

- COALESCE

```sql
SELECT
	COALESCE(product, product_code) AS product_info
FROM
	customer_data.customer_purchase
```

### Autoreflexão: Desafios com o SQL:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/24375a67-3a5c-479e-b1a4-2852e9202f24image1.png?expiry=1705881600000&hmac=6_xbk3JHjdSW4qaCmoUIp4JUjDXeeK8wEpYS5KHDBdw

**Visão geral**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/24375a67-3a5c-479e-b1a4-2852e9202f24image2.png?expiry=1705881600000&hmac=2iSZ1pJlQ3coajpy4jeoxbNM-Lzy58mmLPwkyFyAyA0

Agora que você praticou a escrita de funções SQL, pode fazer uma pausa por um momento e pensar sobre o que está aprendendo. Nesta autorreflexão, considere o que pensa sobre sua experiência com o aprendizado de SQL e responda a algumas perguntas breves.

Essa autorreflexão o ajudará a desenvolver insights sobre seu próprio aprendizado e prepará-lo para identificar seus sucessos e dificuldades com o aprendizado de SQL, para que possa entender como desenvolver ainda mais suas habilidades. Ao responder a perguntas (e fazer suas próprias perguntas), você considerará conceitos, práticas e princípios úteis para refinar sua compreensão e reforçar seu aprendizado. Você trabalhou duro, então não deixe de aproveitá-lo ao máximo: Essa reflexão ajudará a fixar o seu conhecimento!

**Sua experiência com SQL (até agora)**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/24375a67-3a5c-479e-b1a4-2852e9202f24image2.png?expiry=1705881600000&hmac=2iSZ1pJlQ3coajpy4jeoxbNM-Lzy58mmLPwkyFyAyA0

Até agora, você foi apresentado a muitas ferramentas diferentes disponíveis no SQL. Como uma breve revisão, você aprendeu a concluir tarefas como:

Obter dados de uma tabela usando instruções **SELECT**.

Deduplicar dados usando comandos como **DISTINCT**e **COUNT + WHERE**.

Manipular dados de string com **TRIM(), SUBSTR,** e **LENGTH**.

Criar/eliminar tabelas com **CREATE TABLE** e **DROP TABLE**.

Alterar os tipos de dados com **CAST**.

---

# Desafio Semanal 3