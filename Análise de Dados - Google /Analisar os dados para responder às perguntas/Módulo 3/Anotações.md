# Módulo 3 - Como agregar dados para análise

---

# VLOOKUP na agregração de dados

- TRUE
- FALSE

A VLOOKUP só retorna a primeira correspondência encontrada em determinado intervalo e consegue pesquisar somente nas colunas à direita.

Na função =VLOOKUP(K2,'Sheet 4'!A:B,2,TRUE), TRUE orienta a VLOOKUP a procurar por correspondências aproximadas.

## Principais conceitos de VLOOKUP

As funções podem ser usadas para rapidamente encontrar informações e realizar cálculos com valores específicos. Nessa leitura, você aprenderá sobre a importância de uma dessas funções, a **VLOOKUP**, ou Vertical Lookup, que procura por determinado valor na coluna de uma planilha e retorna uma parte da informação correspondente da linha na qual o valor pesquisado foi encontrado.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/6kVcK5jmS7uFXCuY5iu7KQ_133bcab339b84fc6acc055009f1df0cc_Screen-Shot-2021-02-08-at-4.25.46-PM.png?expiry=1706313600000&hmac=_sAfBqAFDdtceTAStZX9LDLdyHUCeahCpPT4Edc9oZo

## **Quando é preciso usar VLOOKUP?**

Há dois motivos comuns para usar VLOOKUP:

- Preencher dados em uma planilha
- Combinar dados de uma planilha com dados de outra

## **Sintaxe de VLOOKUP**

Uma função VLOOKUP está disponível tanto no Microsoft Excel quanto nas Planilhas Google. Você conhecerá a sintaxe geral das Planilhas Google (Consulte os recursos ao final dessa leitura para mais informações sobre a VLOOKUP no Microsoft Excel).

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/aV9rVW6sTomfa1VurE6JPA_24be9ca664f141f3bda1c38cd3e41308_Screen-Shot-2021-02-07-at-4.52.41-PM.png?expiry=1706313600000&hmac=GxYxwamOcZh9Pa_k5e2cs_eEfgoibi6RH9uw6BN_Dyw

Confira a sintaxe.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/VWOIu2MoSICjiLtjKPiAvw_502da5cf928d48cdbcee5e9d65387755_Screen-Shot-2021-02-07-at-4.52.48-PM.png?expiry=1706313600000&hmac=49bvNQTwhGKgwo0fyOvwD13qTb1xhhtAXDXep6tbGN0

### **search_key**

- O valor a ser pesquisado.
- Por exemplo, 42, "Cats" ou I24.

### **range**

- O intervalo a ser considerado na pesquisa.
- A primeira coluna do intervalo é pesquisada para localizar dados que correspondam ao valor especificado por search_key.

### **index**

- O índice de coluna do valor a ser retornado, em que a primeira coluna do intervalo é numerada como 1.
- Se o índice não estiver entre 1 e o número de colunas do intervalo, será retornado #VALUE!.

### **is_sorted**

- Indica se a coluna a ser pesquisada (a primeira coluna do intervalo especificado) está classificada. TRUE por padrão.
- Recomenda-se definir is_sorted como FALSE. Dessa forma, será retornada uma correspondência exata. No caso de haver vários valores correspondentes, o conteúdo da célula que corresponde ao primeiro valor encontrado é retornado; se nenhum valor assim for encontrado, será retornado #N/A.
- Se is_sorted for TRUE ou omitida, será retornada a correspondência mais próxima (menor ou igual à chave de pesquisa). Se todos os valores da coluna de pesquisa forem maiores do que a chave de pesquisa, será retornado #N/A.

## **E se retornar #N/A?**

Como já se sabe, #N/A indica que não é possível retornar um valor correspondente como resultado de VLOOKUP. O erro não significa que há, de fato, algo de errado com os dados; as pessoas, porém, podem ficar em dúvida ao verem esse erro em um relatório. Use a função **IFNA** para substituir o erro #N/A por algo mais descritivo, como “Inexistente”.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/1YqrBVcLTEiKqwVXC1xI8g_0b9e57fae2474bc3a9853d7e1bb6f2f1_IFNA-does-not-exist-example.png?expiry=1706313600000&hmac=BFn9MnFHjWqaBBhAP7J3qsekdkALVlUFQsJWzgb-O_M

Confira a sintaxe.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/QRXo-BruSX-V6Pga7ol_fQ_d10d3d2712d14ce4bf3ac37fc7d63ff1_IFNA-syntax.png?expiry=1706313600000&hmac=w3RLRmYyXQ8LkeocfpqZIhpLSj-fblt7hvMz_INW9OQ

### **value**

- É um valor obrigatório.
- A função verifica se o valor da célula corresponde ao valor, como #N/A.

### **value_if_na**

- É um valor obrigatório.
- A função retorna esse valor se o valor da célula corresponde ao valor do primeiro argumento. Ela retorna isso quando o valor da célula é #N/A.

## **Lembretes importantes sobre a VLOOKUP**

- TRUE refere-se a uma correspondência aproximada, enquanto FALSE significa uma correspondência exata na chave de pesquisa. Se os dados usados para a chave de pesquisa estiverem classificados, é possível usar TRUE.
- Você quer que a coluna que corresponde à chave de pesquisa em uma fórmula VLOOKUP fique do lado esquerdo dos dados. A VLOOKUP analisa somente os dados à direita depois que uma correspondência é encontrada. Em outras palavras, o índice de VLOOKUP indica somente as colunas à direita. Para isso, pode ser necessário mover as colunas subjacentes antes de usar VLOOKUP.
- Depois de preencher os dados com a fórmula de VLOOKUP, copie e cole os dados como valores somente para excluir as fórmulas e, assim, manipular os dados outra vez.

## **Recursos de VLOOKUP para Microsoft Excel**

A VLOOKUP pode ser ligeiramente diferente no Microsoft Excel, mas os conceitos gerais ainda podem ser aplicados. Consulte os seguintes recursos se estiver trabalhando com Excel.

- [CComo usar VLOOKUP no Excel](https://support.microsoft.com/en-us/office/vlookup-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1): Nesse tutorial, você encontra um vídeo com noções básicas sobre como a função VLOOKUP funciona no Excel, além de exemplos práticos.
- [Tutorial de VLOOKUP no Excel](https://www.youtube.com/watch?v=d3BYVQ6xIE4): Acompanhe essa videoaula para saber como escrever uma fórmula VLOOKUP no Excel e aproveite dicas e truques importantes que vão te ajudar a economizar tempo.
- [23 coisas que você deve saber sobre VLOOKUP no Excel](https://exceljet.net/things-you-should-know-about-vlookup): Confira essa lista com 23 fatos sobre a VLOOKUP e desafios que você pode encontrar, e saiba como usá-los a seu favor.
- [Como usar a função VLOOKUP do Excel](https://edu.gcfglobal.org/en/excel-tips/how-to-use-excels-vlookup-function/1/): Esse artigo traz um exemplo específico sobre como aplicar a VLOOKUP em suas pesquisas.
- [VLOOKUP no Excel vs. Planilhas Google](https://infoinspired.com/sheets-vs-excel-formula/vlookup-formula-in-excel-and-google-sheets/): nesse guia, você encontra uma comparação de VLOOKUP no Excel e no Planilhas Google.

## Pergunta 1: Visão Geral da Atividade

### Objetivo

Praticar o uso de VLOOKUP para consolidar informações entre duas planilhas, limpar dados e criar uma tabela de resumo.

### Passos

1. **Pesquisa com VLOOKUP**
    - Descobrir quantas horas o funcionário Daniel Chan trabalhou no dia 3 de janeiro de 2020.
    - Uso do VLOOKUP com a sintaxe: `=VLOOKUP(B11, B2:E6, 4, false)`.
    - Tratar erro devido a espaços extras.
2. **Preparação dos Dados**
    - Limpar e classificar os dados.
    - Remover espaços extras com a função `=TRIM(B2)` e copiar para outras células.
    - Rotular colunas de dados.
3. **Preenchimento e Soma de Horas**
    - Usar células preenchidas para somar horas de trabalho.
    - Uso da função `=SUM(C15:H15)`.
4. **Importação de Dados de Índice Salarial**
    - Uso do VLOOKUP para importar dados da Sheet2 com a função `=VLOOKUP(A2, Sheet2!$A$2:$D$6, 4, false)`.
5. **Cálculo do Pagamento Total**
    - Usar a função `=PRODUCT(I15, J15)` para calcular o pagamento total.
6. **Criação de uma Tabela de Resumo (Tabela Dinâmica)**
    - Processo para criação de tabela dinâmica no Excel ou Planilhas Google.

### Confirmação e Reflexão

- Função VLOOKUP para confirmar o índice salarial de Anika Patel: `=VLOOKUP(B19, B15:J19, 9, false)`.

## Pergunta 2: Importância da Limpeza e Rotulação de Dados

### Resposta

O VLOOKUP é crucial para garantir precisão na busca de dados e eficiência na análise, especialmente em grandes conjuntos de dados, e pode ser usado para diversas finalidades, como buscar informações específicas de funcionários ou cruzar dados entre planilhas.

### Avaliação

Parabéns por concluir esta atividade prática! Uma ótima resposta para essa pergunta incluiria como a VLOOKUP pode ser usada para consultar e excluir espaços extras dos dados, converter dados de texto em dados numéricos e criar uma tabela de resumo a partir das 

## Teste seu Conhecimento sobre a VLOOKUP

### Perguntas e Respostas

1. **Pergunta 1:** Qual é a função correta para alterar a string de um texto na célula F8 da planilha para um valor numérico?
    - **Resposta:** `=VALUE(F8)`
    - **Explicação:** A sintaxe correta para converter um texto para um valor numérico é `=VALUE(F8)`, com a referência específica à célula.
2. **Pergunta 2:** Qual é a finalidade de uma referência absoluta em uma função, como "$C$3"?
    - **Resposta:** Bloquear linhas e colunas para que não sofram alterações quando uma função é copiada.
    - **Explicação:** Uma referência absoluta, como `$C$3`, serve para manter a referência constante, mesmo quando a fórmula é copiada para outras células.
3. **Pergunta 3:** Na VLOOKUP, TRUE orienta a função a pesquisar pelas correspondências exatas, enquanto que FALSE orienta a função para pesquisar por correspondências aproximadas.
    - **Resposta:** Falso
    - **Explicação:** Na VLOOKUP, `FALSE` é usado para correspondências exatas, enquanto `TRUE` é para correspondências aproximadas.
4. **Pergunta 4:** Qual a sintaxe correta de VLOOKUP para pesquisar pela população da Nigéria?
    - **Resposta:** `=VLOOKUP("Nigéria", A2:C10, 2, false)`
    - **Explicação:** A função correta para buscar a população da Nigéria é `=VLOOKUP("Nigéria", A2:C10, 2, false)`, onde "Nigéria" é a chave de pesquisa, A2:C10 é o intervalo, 2 é a coluna da população, e `false` indica a busca por correspondência exata.
5. **Pergunta 5:** Qual a sintaxe de VLOOKUP correta para pesquisar pela altura do prédio em Mecca?
    - **Resposta:** `=VLOOKUP("Mecca", A2:D7, 3, false)`
    - **Explicação:** Para buscar a altura do prédio em Mecca, usa-se `=VLOOKUP("Mecca", A2:D7, 3, false)`, onde "Mecca" é a chave de pesquisa, A2:D7 é o intervalo, 3 é a coluna da altura, e `false` para correspondência exata.

---

# Usar instruções JOIN para agregar dados no SL

- Noções básicas de JOIN

![Kw1Xj3l7T22NV495ey9tfg_d1e8ccd0bc304078835d41d818f8c5f1_modified-query-for-JOINS.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/a1458595-c80b-4cbf-a3ba-3ef90ce0a8f3/Kw1Xj3l7T22NV495ey9tfg_d1e8ccd0bc304078835d41d818f8c5f1_modified-query-for-JOINS.png)

Um analista de dados está trabalhando com duas tabelas em um banco de dados. Qual cláusula JOIN permite que ele combine a funcionalidade RIGHT e LEFT JOIN para retornar registros correspondentes de qualquer uma das tabelas?

- [x]  **OUTER JOIN**
- [ ]  **INNER JOIN**
- [ ]  **ALL JOIN**
- [ ]  **MATCH JOIN**

Correto

A cláusula OUTER JOIN permite que ele combine a funcionalidade RIGHT e LEFT JOIN para retornar registros correspondentes de qualquer uma das tabelas.

- JOIN - Combine rowws from two or more tables on a related column
    - INNER - Returns records with matching values in both tables
    - LEFT - Return all the records from the left table and only the matching records from the right table
    - RIGHT - Return all records from the right table and only the matching records from the left table
    - OUTER - Combines RIGHT and LEFT join
    
    ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/8b043ccb-e0f5-4549-8a87-96e230a96b04/Untitled.png)
    

## Identidades ocultas: a importância dos aliases

Nesta leitura, você aprenderá a usar a atribuição de alias para simplificar suas consultas do SQL. **Aliases** são usados em consultas do SQL para criar nomes temporários para uma coluna ou tabela. Eles simplificam muito a referência a tabelas e colunas nas consultas do SQL quando os nomes destas são muito longos ou complexos para serem usados nas consultas. Imagine o nome de uma tabela como special_projects_customer_negotiation_mileages. Seria difícil reescrevê-lo toda vez que fosse usar a tabela. Com um alias, você cria um apelido pertinente que pode ser usado em sua análise. Nesse caso, “special_projects_customer_negotiation_mileages” pode simplesmente ser chamado de “mileage”. Ao invés de escrever o extenso nome da tabela, você pode usar um apelido pertinente da sua escolha.

## **Sintaxe básica para atribuição de alias**

**Atribuição de alias** refere-se ao processo de usar aliases. Nas consultas do SQL, aliases são implementados com o uso do comando AS. A sintaxe básica desse comando pode ser vista na seguinte consulta para atribuição de alias a uma tabela:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/-ZspgZeXTkmbKYGXl_5J2g_731766f1a13b431f976229fa12210a93_Screen-Shot-2021-01-28-at-13.54.49.png?expiry=1706313600000&hmac=wCCWukJ_08eAu_XPQfuFIWJXw9gftHLxKArD7RfDA54

Observe que AS é precedido pelo nome da tabela e seguido do novo apelido. É uma abordagem parecida com a atribuição de alias a uma coluna:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/J_W8Q04oSc21vENOKOnNfQ_a31aa979b2ea497aa1c0281f7beca2a3_Screen-Shot-2021-01-28-at-13.55.15.png?expiry=1706313600000&hmac=WOYaHjEjUMUBrL55FzNWmhy3L_9Wyq18N3oQma_39Q8

Em ambos os casos, você tem um novo nome que pode usar para se referir à coluna ou tabela que recebeu o alias.

### **Sintaxe alternativa para aliases**

Se, ao executar uma consulta, o uso do comando AS gera um erro pois o banco de dados do SQL com o qual está trabalhando não tem compatibilidade, você pode não utilizá-lo. Nos exemplos anteriores, a sintaxe alternativa para atribuição de alias a uma tabela ou coluna se daria conforme abaixo:

- FROM table_name alias_name
- SELECT column_name alias_name

O principal ponto que podemos entender aqui é que as consultas podem ser executadas com ou sem o uso do comando AS para atribuição de alias; tal uso, no entanto, tem a vantagem de tornar as consultas mais legíveis. Ele ajuda a destacar os aliases com mais clareza.

## **A atribuição de aliases na prática**

Vamos ver um exemplo de uma consulta do SQL que usa a atribuição de alias. Digamos que você está trabalhando com duas tabelas: uma inclui dados do funcionário e a outra abrange os dados do departamento. A instrução FROM para atribuir alias às tabelas pode se dar da seguinte forma:

FROM work_day.employees AS employees

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/A8L7DcvJTaCC-w3LyX2gTw_bc4580cfc02b4a6b85f6d2cd33a1027a_Screen-Shot-2021-01-28-at-13.56.11.png?expiry=1706313600000&hmac=b_3XZLzrRjDn7ipIvd9p6vSFTGcNHr8QU-spJFyYoWI

Esses aliases ainda permitem que você saiba exatamente o que está nessas tabelas, mas já não precisa mais inserir manualmente esses longos nomes de tabela. Os aliases podem ser bastante úteis para consultas longas e complexas. Quando se tem aliases que indicam o que está nas tabelas, fica muito mais fácil ler e escrever suas consultas.

## **Para mais informações**

Quer saber mais sobre a atribuição de aliases? Confira alguns recursos para ajudar você a dar o primeiro passo:

- **[Aliases do SQL](https://www.w3schools.com/sql/sql_alias.asp):** Esse tutorial sobre como atribuir aliases é bastante útil quando se começa a praticar a elaboração de consultas e a atribuição de aliases a tabelas por conta própria. Além disso, mostra como a atribuição de aliases funciona com tabelas reais.
- **[Alias do SQL](https://www.sqltutorial.org/sql-alias/):** Uma introdução detalhada à atribuição de alias com vários exemplos. É outro recurso excelente que você pode consultar se precisar de mais exemplos.
- **[Como usar atribuição de alias de coluna](https://documentation.sas.com/?cdcId=pgmsascdc&cdcVersion=9.4_3.5&docsetId=sqlproc&docsetTarget=p0aymxwsvbt5wcn1lncugwjtf758.htm&locale=en):** Esse guia foca especificamente na atribuição de alias de colunas. Em geral, você atribuirá alias a tabelas inteiras, mas, se precisar fazer isso para uma coluna apenas, esse é um ótimo recurso para você marcar como favorito.

## Como usar instruções JOIN de forma eficaz

Nessa leitura, você revisará como as instruções JOIN são usadas e conhecerá alguns recursos que podem ser usados para aprender mais sobre elas. A JOIN combina tabelas através de uma chave primária ou estrangeira para alinhar as informações de ambas as tabelas no processo de combinação. Ela usa essas chaves para identificar as relações e os valores correspondentes nas tabelas.

Precisa relembrar seu conhecimento sobre chaves primárias e estrangeiras? Consulte o [glossário](https://www.coursera.org/learn/analisar-os-dados-para-responder-as-perguntas/supplement/0p8b6/glossario-termos-e-definicoes) do curso ou volte ao tópico [Bancos de dados em data analytics](https://www.coursera.org/learn/preparar-os-dados-para-exploracao/supplement/uXqEX/bancos-de-dados-em-analise-de-dados).

## **A sintaxe geral de JOIN**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/fwAdwVNfQMSAHcFTX7DEQw_97e081c4783f466e9085b6a23b8aeac7_Screenshot-2021-04-26-2.12.10-PM.png?expiry=1706313600000&hmac=UzqN9UVmWAXT65nh9vGRuZZ2LA1aWL0BUd8a0wPvVhk

Como é possível ver nesta sintaxe, a instrução JOIN é parte da cláusula FROM da consulta. No SQL, **JOIN** indica que você irá combinar os dados das duas tabelas. **ON**, no SQL,identifica a forma como as tabelas devem ser correspondidas com relação às informações corretas a serem combinadas a partir delas.

## **Tipo de instruções JOIN**

Há quatro formas gerais de executar instruções JOIN em consultas do SQL: INNER, LEFT, RIGHT e FULL OUTER.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/V3K80lLeRfayvNJS3tX2DQ_c5371083976944c7808132ca392f419d_Screen-Shot-2021-02-07-at-5.14.41-PM.png?expiry=1706313600000&hmac=biJdhQYviUcHv2iH5ju_u4LkjFmyF4CPlDgbAk-4Ees

Os círculos representam as tabelas esquerda e direita, e o ponto em que estão unidas está destacado em azul

Veja o que essas diferentes consultas JOIN fazem.

### **INNER JOIN**

INNER é *opcional* nessa consulta do SQL, pois é a operação JOIN padrão e a mais comumente usada. Ela pode aparecer simplesmente como JOIN. INNER JOIN retorna registros se os dados aparecem em ambas as tabelas. Se você usar, por exemplo, INNER JOIN para as tabelas "customers" e "orders" e corresponder os dados usando a chave "customer_id", você combinará os dados para cada "customer_id" que aparece nas tabelas. Se há uma "customer_id" na tabela "customers", mas não na "orders", os dados de "customer_id" não são combinados ou retornados pela consulta.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/VL_Mr8BxTji_zK_Acf445A_9679fe4564e94c54aa079d1ee9df63db_Screenshot-2021-04-26-2.16.53-PM.png?expiry=1706313600000&hmac=4pGZn7NhTJFSsJs_vGfg8FlHz46b4GJc52nhrKVNrsA

Os resultados da consulta podem parecer com o abaixo, em que " customer_name" pertence à tabela "customers" e "product_id" e "ship_date" pertencem à tabela "orders":

| customer_name | product_id | ship_date |
| --- | --- | --- |
| Martin's Ice Cream | 043998 | 23/02/2021 |
| Beachside Treats | 872012 | 25/02/2021 |
| Mona's Natural Flavors | 724956 | 28/02/2021 |
| ... etc. | ... etc. | ... etc. |

Os dados das duas tabelas foram combinados ao corresponder a chave "customer_id" em comum em ambas. Observe que "customer_id" não aparece nos resultados da consulta; ele é simplesmente usado para definir a relação entre os dados das duas tabelas, para que os dados possam ser combinados e retornados.

### **LEFT JOIN**

Também pode aparecer como LEFT OUTER JOIN, mas a maioria dos usuários prefere LEFT JOIN. Todas as duas sintaxes estão corretas. A LEFT JOIN retorna todos os registros da tabela à esquerda e somente os registros correspondentes da tabela à direita. Use-a sempre que precisar dos dados da primeira tabela completa e dos valores da segunda tabela, se houver. Na consulta abaixo, por exemplo, LEFT JOIN retornará "customer_name" com o "sales_rep" correspondente, se disponível. Se houver um cliente que não interagiu com um representante de vendas, esse cliente ainda assim aparecerá nos resultados da consulta, porém com um valor NULL para "rep_vendas".

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/FDIjfqI8ThyyI36iPN4cbA_a02a48c3b3644450899a06d127200f7a_Screenshot-2021-04-26-2.18.04-PM.png?expiry=1706313600000&hmac=XhqKHjfAzrRPwMu12xLFocqLeRETTqjunz_ork2Kn4I

Os resultados da consulta podem parecer com o abaixo, em que "customer_name" pertence à tabela "customers" e "sales_rep" pertence à tabela "sales". Mais uma vez, os dados das duas tabelas foram combinados ao corresponder o "customer_id" em comum nas duas, mesmo que "customer_id" não tenha retornado nos resultados da consulta.

| customer_name | rep_vendas |
| --- | --- |
| Martin's Ice Cream | Luis Reyes |
| Beachside Treats | NULL |
| Mona's Natural Flavors | Geri Hall |
| ...etc. | ...etc. |

### **RIGHT JOIN**

Pode aparecer como RIGHT OUTER JOIN ou RIGHT JOIN. A RIGHT JOIN retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. Na prática, RIGHT JOIN é raramente usada. A maioria das pessoas simplesmente trocam as tabelas e continuam com a LEFT JOIN. Usando o exemplo anterior da LEFT JOIN, a consulta que usa RIGHT JOIN retornaria o seguinte:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0k41xzGXSDmONccxlzg5og_c59412a8d1c54420b3f5d359fb758df0_Screenshot-2021-04-26-2.29.13-PM.png?expiry=1706313600000&hmac=nwPWVDtHpNNITq4gJzy5GQtb5tlbbzc2Np493Us7Td8

Os resultados da consulta são os mesmos do exemplo anterior.

| customer_name | rep_vendas |
| --- | --- |
| Martin's Ice Cream | Luis Reyes |
| Beachside Treats | NULL |
| Mona's Natural Flavors | Geri Hall |
| ...etc. | ...etc. |

### **FULL OUTER JOIN**

Por vezes, aparece como FULL JOIN. A FULL OUTER JOIN retorna todos os registros das tabelas especificadas. Você pode combinar as tabelas dessa forma, mas não se esqueça de que isso pode levar, consequentemente, a uma grande extração de dados. A FULL OUTER JOIN retorna todos os registros das *duas* tabelas, mesmo que os dados não estejam preenchidos em uma delas. Na consulta abaixo, por exemplo, você obterá todos os clientes e as datas de envio dos produtos. Como está usando uma FULL OUTER JOIN, pode ser que clientes retornem sem as datas de envio correspondentes ou então que as datas de envio retornem sem os clientes correspondentes. Se não houver dados correspondentes em nenhuma tabela, será retornado um valor NULL (nulo).

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/AUqa8sO8TbeKmvLDvJ23tA_5400c4608ced44c7810008f806dcba93_Screenshot-2021-04-26-2.19.19-PM.png?expiry=1706313600000&hmac=Kkhc3Pp0qQ_eZbkYQaiUQx2VFfR4VrfRjqTt-vu3VvE

Os resultados da consulta podem parecer com os mostrados a seguir.

| customer_name | ship_date |
| --- | --- |
| Martin's Ice Cream | 2021-02-23 |
| Beachside Treats | 2021-02-25 |
| NULL | 2021-02-25 |
| The Daily Scoop | NULL |
| Mountain Ice Cream | NULL |
| Mona's Natural Flavors | 2021-02-28 |
| ...etc. | ...etc. |

## **Para mais informações**

As instruções JOIN serão úteis ao se trabalhar com bancos de dados relacionais e com o SQL, sem contar que você terá inúmeras oportunidades para praticá-las. Confira alguns outros recursos que trazem mais informações sobre as instruções JOIN e como usá-las:

- **[JOIN no SQL](https://www.w3schools.com/sql/sql_join.asp):** É uma ótima explicação básica das instruções JOIN com exemplos. Precisa relembrar seu conhecimento sobre o que diferentes JOIN fazem? Esse é um excelente recurso para favoritar e consultar quando quiser.
- **[Instruções JOIN de banco de dados - Introdução aos tipos e conceitos de JOIN](https://www.essentialsql.com/introduction-database-joins/):** É uma introdução bem completa sobre as instruções JOIN. Esse artigo não apenas explica o que são as instruções JOIN e como usá-las, como também aborda de forma detalhada as diferentes situações de quando e por que usar as instruções JOIN. É um ótimo recurso se tiver interesse em saber mais sobre a lógica por trás do uso da JOIN.
- **[Tipos de JOIN SQL explicados em imagens](https://dataschool.com/how-to-teach-people-sql/sql-join-types-explained-visually/):** Esse recurso, que traz uma representação visual das diferentes instruções JOIN, é uma forma muito útil de refletir sobre as instruções JOIN se você for do tipo que aprende com recursos visuais, além de ser uma forma bem bacana de se lembrar dos diferentes tipos.
- **[JOIN no SQL: como reunir dados com uma JOIN por vez](https://towardsdatascience.com/sql-join-8212e3eb9fde):** Além de contar com uma explicação detalhada sobre as instruções JOIN com exemplos, esse recurso traz exemplos de dados que você pode usar para acompanhar o guia passo a passo. É uma forma útil de praticar as instruções JOIN com dados concretos.
- **[JOIN no SQL:](https://www.dofactory.com/sql/join)** outro recurso que traz uma explicação clara sobre as instruções JOIN e usa exemplos para demonstrar como elas funcionam na prática. Esses exemplos também combinam as instruções JOIN com a atribuição de alias. É uma ótima oportunidade de ver como as instruções JOIN podem ser combinadas com outros conceitos do SQL que você já aprendeu durante o curso.

**Revise as instruções JOIN**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/242b4e18-aae7-447b-a166-d136905a671cimage2.png?expiry=1706313600000&hmac=0hUz61a6d9Y-DL8LbQ0whGJQx1Coye4bWCbnSTtMv9o

Antes de unir as duas tabelas com consultas, pare um pouco para analisar os diversos tipos de instruções JOIN.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/242b4e18-aae7-447b-a166-d136905a671cimage4.png?expiry=1706313600000&hmac=I9NzysWVYjdovcJx0E82B5ydVc9s1Ua7oPhKIzsJDV0

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/242b4e18-aae7-447b-a166-d136905a671cimage5.png?expiry=1706313600000&hmac=OKHUjwz4ebaArHGviOhmUKnvQBtdDrUxhe_dz2JUEXE

Os dois tipos mais comuns são: INNER JOIN e OUTER LEFT JOIN (também conhecidas como LEFT JOIN). Só para relembrar:

**INNER JOIN:** Retorna somente as linhas em que o alvo aparece nas duas tabelas.

**LEFT JOIN:** Retorna cada linha da tabela esquerda, bem como todas as linhas da tabela direita com as chaves correspondentes encontradas na tabela esquerda.

Parabéns por concluir esta atividade prática! Uma ótima resposta incluiria que as instruções JOIN permitem combinar dados de tabelas vinculadas, o que ajuda você a fazer comparações e responder a perguntas da empresa.

Dominar as instruções JOIN é um dos aspectos mais importantes do SQL, uma vez que combinar dados de diferentes tabelas de banco de dados é uma habilidade essencial para analistas de dados. Ao se candidatar às vagas de emprego, lembre-se de que as instruções JOIN são um assunto muito abordado nas entrevistas de analistas de dados! Quanto mais instruções JOIN escrever, mais preparado(a) você estará para assumir um cargo de analista de dados.

- COUNT e COUNT DISTINCT

Use when want to answer a question about “How many”.

- Aliasing

Renomear a QUERY 

Uma sintaxe alternativa usa a palavra-chave AS para atribuir um nome de alias:

```sql
FROM 
     warehouse_orders.Orders AS orders
```

A COUNT retorna o número de linhas de um intervalo específico. A COUNT DISTINCT retorna somente os valores distintos de um intervalo específico.

**Teste seu conhecimento sobre como usar a instrução JOIN para agregar dados**

1. **Pergunta 1**
    
    Um analista de dados quer recuperar somente registros de um banco de dados com valores correspondentes em duas tabelas diferentes. Qual função JOIN ele deve usar?
    
    - [ ]  OUTER JOIN
    - [x]  INNER JOIN
    - [ ]  RIGHT JOIN
    - [ ]  LEFT JOIN
    
    **Resposta:**
    
    Correto. O analista de dados deve usar a função INNER JOIN para recuperar somente registros de um banco de dados com valores correspondentes em duas tabelas diferentes.
    
2. **Pergunta 2**
    
    Você está escrevendo uma consulta SQL para orientar um banco de dados a contar valores de um intervalo específico. Você quer contar cada valor uma única vez, mesmo que ele se repita. Qual função você deve incluir na consulta?
    
    - [ ]  COUNT
    - [ ]  COUNT RANGE
    - [x]  COUNT DISTINCT
    - [ ]  COUNT VALUES
    
    **Resposta:**
    
    Correto. O analista deve usar a função COUNT DISTINCT na consulta para orientar um banco de dados a retornar valores distintos em um determinado intervalo.
    
3. **Pergunta 3**
    
    Um analista de dados quer nomear temporariamente uma coluna na consulta para facilitar a leitura e gravação. Qual técnica ele deve usar?
    
    - [ ]  Nomenclatura
    - [ ]  Filtragem
    - [x]  Atribuição de alias
    - [ ]  Atribuição de identificação
    
    **Resposta:**
    
    Correto. O analista deve usar a atribuição de alias para nomear temporariamente uma coluna em uma consulta, a fim de facilitar a leitura e gravação.
    

---

# Trabalhar com subconsultas

- Consultas dentro de consultas

```sql
SELECT
	station_id,
name
FROM

bigquery-public-data.new_york.citibike_stations
WHERE
	station_id IN
	
	(
		SELECT
			start_station_id
		FROM

	bigquery-public-data.new_york.citibike_trips
		WHERE
			usertype = 
	'SUBSCRIBER'
	)
```

- Como usar subconsultas para agregar dados
    - HAVING
    
    ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/35984f52-6985-4e10-97f3-cf687c7c7b99/Untitled.png)
    
    - CASE
    
    ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/7874a34b-5b1e-4690-a931-3f80307bdaf8/Untitled.png)
    

```sql

SELECT
	Warehouse.warehouse_id,
	CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,
	COUNT(Orders.order_id) AS number_of_orders,
	(SELECT
		COUNT(*)
	FROM warehouse_orders.Orders Orders)
	AS total_orders,
	CASE
		WHEN COUNT (Orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) <= 0.20
		THEN "fulfilled 0-20% of Orders"
		WHEN COUNT (Orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) > 0.20 
		AND COUNT (Orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) <= 0.60
		THEN "fulfilled 21-60% of Orders"
	ELSE "fulfilled more than 60% OF Orders"
	END AS fulfillment_summary
FROM warehouse_orders.Warehouse Warehouse
LEFT JOIN warehouse_orders.Orders Orders
	ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
	Warehouse.warehouse_id,
	warehouse_name
HAVING
	COUNT(Orders.order_id) > 0
```

## Subconsultas e funções do SQL: uma amizade funcional

Você aprenderá sobre as funções do SQL e como elas podem às vezes ser usadas com subconsultas. As **funções do SQL** são ferramentas integradas ao SQL que permitem a realização de cálculos. Uma **subconsulta**, também chamada de consulta interna ou aninhada, é uma consulta dentro de outra consulta.

## **Como as funções do SQL funcionam?**

Graças às funções do SQL, a agregação de dados se torna possível (Só para lembrar, a agregação de dados refere-se ao processo de reunir dados de diferentes fontes para combiná-los em uma única coleção sintetizada). Bem, como as funções do SQL funcionam? Voltando a W3Schools, vamos rever algumas dessas funções para entender melhor como executar essas consultas:

- **[HAVING no SLQ](http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/sql/sql_having.asp.html):** Uma visão geral da cláusula HAVING, incluindo seu significado e um tutorial de como e quando funciona.
- **[CASE no SQL](https://www.w3schools.com/sql/sql_case.asp):** Explore o uso da instrução CASE e veja exemplos de como funciona.
- **[IF no SQL](https://www.w3schools.com/sql/func_mysql_if.asp):** Tutorial da função IF com exemplos práticos.
- **[COUNT no SQL](http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/sql/sql_func_count.asp.html):** A função COUNT é tão importante quanto as demais, e esse tutorial traz vários exemplos para você conferir.

## **Subconsultas: a cereja do bolo**

Pense na consulta como um bolo. O bolo pode ter várias camadas e até mesmo camadas dentro dessas camadas. Cada uma dessas camadas é uma subconsulta; quando reunimos todas as camadas, nós temos um bolo (consulta). Em geral, as subconsultas encontram-se aninhadas em cláusulas SELECT, FROM e/ou WHERE. Não há uma sintaxe geral para as subconsultas, mas a sintaxe de uma subconsulta básica se dá como abaixo:

SELECT account_table.*
   FROM (
                SELECT *
                   FROM transaction.sf_model_feature_2014_01
                WHERE day_of_week = 'Friday'
               ) account_table
   WHERE account_table.availability = 'YES'

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/u_5-It4QSSy-fiLeEEkstg_3fb935d1ede84638afe49c6a7edb9912_Screen-Shot-2021-01-28-at-14.02.37.png?expiry=1706400000000&hmac=hRemaj983LYTNktxs2sNFdo0dAjxmsak01Tg1xs7zk0

Você observará que, dentro da primeira cláusula SELECT, há outra cláusula SELECT. A segunda cláusula SELECT marca o início da subconsulta nessa instrução. Há várias formas de se usar as subconsultas, e nos recursos você encontra maiores orientações. Antes, no entanto, vamos recapitular as normas da subconsulta.

As subconsultas precisam seguir algumas regras:

- As subconsultas precisam ser colocadas entre parênteses.
- Uma subconsulta pode ter apenas uma coluna especificada na cláusula SELECT. Porém, se quiser que uma subconsulta compare várias colunas, essas colunas devem ser selecionadas na consulta principal.
- As subconsultas que retornam mais de uma linha só podem ser usadas com operadores de múltiplo valor, como o operador IN, que permite especificar vários valores em uma cláusula WHERE.
- Uma subconsulta não pode ser aninhada em um comando SET. Esse comando é usado junto com UPDATE para especificar quais colunas (e valores) devem ser atualizados na tabela.

### **Recursos adicionais**

Os recursos abaixo trazem mais orientações sobre subconsultas e o uso delas:

- **[Subconsultas do SQL:](https://www.w3resource.com/sql/subqueries/understanding-sql-subqueries.php)**Essa introdução detalhada inclui a definição de subconsulta, sua finalidade no SQL, quando e como usá-la, e como se darão os resultados
- **[Como criar subconsultas no SQL](https://mode.com/sql-tutorial/sql-sub-queries/):** Conheça os princípios básicos das subconsultas nesse tutorial interativo, além de exemplos e problemas práticos para praticar

Enquanto continua a aprender mais sobre o uso do SQL, funções e subconsultas, perceberá quanto tempo você pode realmente poupar ao memorizar essas dicas e truques.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/zvStMbFwSQ20rTGxcAkNDA_c9bd70154d5d4002b519e344be5b763b_Screen-Shot-2021-02-08-at-4.38.18-PM.png?expiry=1706400000000&hmac=zYk-hby3V2h-mDY43-7KMYgNIzDpmKZuqqMynErDynA

- Até onde você pode ir com a análise de dados
    - Always be curious

## **Teste seus conhecimentos sobre como trabalhar com subconsultas**

1. Pergunta 1

Quais das consultas a seguir contêm subconsultas? Selecione todas as opções válidas.

- [ ]  ****
    
    !https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/63d2f447-9b22-48f9-9694-3c40e62f3548image4.png?expiry=1706400000000&hmac=KF96J8ICC3fncOfPzXGFm3dE_KJSxj14-OJvxBKlF_k
    
- [x]  ****
    
    !https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/63d2f447-9b22-48f9-9694-3c40e62f3548image1.png?expiry=1706400000000&hmac=YAfjZr32glWU7Q6zn_cNOdAlwXLJInBoA7QO2VhPmaM
    
- [x]  ****
    
    !https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/63d2f447-9b22-48f9-9694-3c40e62f3548image2.png?expiry=1706400000000&hmac=5SYJepANGOiMwdUpgwa0F2Nn31l3qqtTcFZk4imhF_Y
    
- [x]  ****
    
    !https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/63d2f447-9b22-48f9-9694-3c40e62f3548image3.png?expiry=1706400000000&hmac=6SfayK4T86I9OL-zSK9KfvPh1mM5bxpjjR29Tw0U_h8
    

***C*orreto**

As três consultas com instruções em parênteses incluem subconsultas.

1. Pergunta 2

Preencha a lacuna: Um analista de dados usa a atribuição de alias para facilitar a leitura e gravação de uma consulta. A atribuição de alias envolve _____ temporariamente uma tabela ou coluna em uma consulta.

- **nomear**

***C*orreto**

A atribuição de alias envolve nomear temporariamente uma tabela ou coluna em uma consulta.

1. Pergunta 3

Ao trabalhar com subconsultas, a consulta externa executa primeiro.

- **Falso**

***C*orreto**

A consulta interna executa primeiro e, então, os resultados são transmitidos para uso pela consulta externa.

---

Glossário Semanal

# Desafio Semanal 3

