# esafio do curso

Teste valendo nota. • 1h 5m

Português (Brasil)

VencimentoFeb 18, 11:59 PM -03

1. Pergunta 1

**Cenário 1, perguntas 1-7**

Nos últimos seis meses, você trabalhou para uma empresa de marketing de mala direta como analista de marketing júnior. Mala direta é o material publicitário enviado às pessoas através do correio. Essas pessoas podem ser clientes ou doadores atuais ou potenciais. Muitas instituições de caridade dependem de mala direta para apoio financeiro.

Sua empresa, Directly Dynamic, cria peças de mala direta com sua equipe interna de designers gráficos, serviços especializados de lista de correio e impressão no local. Sua equipe acaba de ser contratada por uma organização sem fins lucrativos local, a Food Justice Rock Springs. A missão da Food Justice Rock Springs é eliminar os desertos alimentares ao estabelecer hortas locais, oferecer despensas móveis, educar os moradores e muito mais. Clique abaixo para ler o e-mail de Tayen Bell, vice-presidente de marketing e divulgação.

Você começa revisando o conjunto de dados. Para usar o modelo para este conjunto de dados, clique no link abaixo e selecione “Usar modelo”.

Link do modelo: [Conjunto de dados dinâmicos](https://docs.google.com/spreadsheets/d/1RB9k74fY75CQjjwGG410IYm6BoxJLAnEM9y-1cVeH2Q/template/preview?resourcekey=0-FV3_UaMyz88IxLqQsiKRzg)

Ou, caso não tenha uma conta do Google, faça o download direto do anexo abaixo.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image1.png?expiry=1706486400000&hmac=LVf3n0j6TMdU61L8thi9NQbuWnp-utC3YCYLFMK4iwI

O cliente pediu que você envie duas correspondências separadas: uma para pessoas em um raio de 80 quilômetros de Rock Springs; a outra para qualquer pessoa fora dessa área. Então, para pesquisar a distância de cada doador da cidade, primeiro você precisa descobrir onde todas essas pessoas moram.

Você pode percorrer 209 linhas de dados, mas sabe que existe uma maneira mais eficiente de organizar as cidades.

**Qual das seguintes funções permitirá que você classifique sua planilha por cidade (coluna K) em ordem crescente?**

**=SORT(A2:R210, 11, TRUE)**

**=SORT(A2:R210, K, ASC)**

**=SORT(A2:R210, 11, ASC)**

**=SORT(A2:R210, K, TRUE)**

Correto

Para classificar sua planilha por cidade em ordem crescente, use a sintaxe da função SORT =SORT(A2:R210, 11, TRUE). Você também pode selecionar A2-R210 e usar o menu suspenso para Classificar planilha por coluna K de A a Z.

1. Pergunta 2

**Continuação do cenário 1**

Você nota que muitas células na coluna da cidade, a coluna K, não possuem um valor. Então, você usa os códigos postais para pesquisar as cidades corretas. Agora, você deseja adicionar as cidades à linha de cada doador. No entanto, você está preocupado em cometer um erro, como um erro de digitação.

**Qual ferramenta de planilha permite controlar o que pode e o que não pode ser inserido em sua planilha a fim de evitar erros de digitação?**


**Lista**

**Localizar**

**D: VLOOKUP**

**Validação de dados**

Correto

Validação de dados permite controlar o que pode e o que não pode ser inserido em sua planilha a fim de evitar erros de digitação. Ela faz isso adicionando listas suspensas com opções predeterminadas, como o nome de cada cidade.

1. Pergunta 3

**Continuação do cenário 1**

Agora, você decide abordar a solicitação de Tayen de incluir uma nota manuscrita na peça de mala direta para qualquer pessoa que tenha doado pelo menos USD 100 no ano passado.

**Qual dos seguintes procedimentos permitirá que você altere como as células em sua planilha aparecem se elas contiverem um valor de USD 100 ou mais?**

**Selecionar a coluna M. Em seguida, selecionar Format > Conditional Formatting. Optar por formatar as células se elas forem maiores que 100.**

**Selecionar a coluna M. Em seguida, selecionar Format > Conditional Formatting. Optar por formatar células se o texto contiver 100.**

**Selecionar a coluna M. Em seguida, selecionar Format > Conditional Formatting. Optar por formatar células se o texto começar com 100.**

**Selecionar a coluna M. Em seguida, selecionar Format > Conditional Formatting. Opte por formatar as células se elas forem maiores ou iguais a 100.**

Correto

Para alterar como as células aparecem se elas contiverem um valor de USD 100 ou mais, selecione a coluna M. Em seguida, selecione Format > Conditional Formatting. Opte por formatar as células se elas forem maiores ou iguais a 100.

1. Pergunta 4

**Continuação do cenário 1**

A essa altura, você percebe que as informações sobre estado e código postal estão na mesma célula. No entanto, o software de lista de endereços de sua empresa exige que os estados estejam em uma linha separada dos códigos postais.

**Para mover o código postal de 5 dígitos na célula L2 para sua própria coluna, use a função =LEFT(L2,5).**


**Verdadeiro**

**Falso**

Correto

Para mover o código postal de 5 dígitos na coluna L para sua própria coluna, use a função =RIGHT(L2,5).

1. Pergunta 5

**Continuação do cenário 1**

Em seguida, você duplica seu conjunto de dados duas vezes usando o menu Sheet. Você renomeia a primeira planilha Donation Form List e remove as cidades que estão a mais de 80 quilômetros de Rock Springs. Você renomeia a segunda planilha Postcard List e remove as cidades que estão a um raio de 80 quilômetros de Rock Springs.

Em seguida, você importa esses conjuntos de dados para o banco de dados da lista de endereços de sua empresa. No banco de dados da lista de endereços, você cria duas tabelas: Donation_Form_List e Postcard_List. Você opta por limpar a Donation_Form_List primeiro.

O software de lista de endereços de sua empresa exige que as unidades estejam na mesma linha que os endereços. No entanto, eles estão atualmente em duas colunas separadas (street_address e unit).

**Qual parte de sua instrução SQL instruirá o banco de dados a combinar essas duas colunas em uma nova coluna chamada “address”?**

**CONCAT(street_address to unit) AS address**

**CONCAT(street_address, " to ", unit) AS address.**

**JOIN(street_address to unit) AS address**

**JOIN(street_address, " to ", unit) AS address**

Correto

A parte da sua instrução SQL usada para instruir o banco de dados a combinar essas duas colunas em uma nova coluna chamada “address” é CONCAT(street_address, " to ", unit) AS address.

1. Pergunta 6

**Continuação do cenário 1**

Seu banco de dados contém pessoas que vivem em Wyoming. No entanto, é importante alinhar seus dados internos com os dados da Food Justice Rock Springs. Você também precisa separar seus dados nas duas listas: Donation_Form_List e Postcard_List. Elas serão baseadas na distância de cada cidade de Rock Springs.

**Os códigos postais estão na coluna chamada zip_code. Qual consulta você usa para selecionar todos os dados da Donation_Form_List, organizados por código postal?**


!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image5.jpeg?expiry=1706486400000&hmac=OYE8pEvHAZPcYpfhxIUS7MGOi7-rgOL-imVSwxXifzw

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image4.jpeg?expiry=1706486400000&hmac=00ns6JjtES6GQo42Wh7zzAAYVhrshGA468BnDCmF8RQ

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image3.jpeg?expiry=1706486400000&hmac=oO-bp3Vax-2phuCJFszq7rEkXMRZ1OEZemJ_sb4CglI

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image2.jpeg?expiry=1706486400000&hmac=CAghSN5AGAm3rrFIbCyr6dXPUlLcd6ezjfzkITtFVoQ

Correto

Para organizar seus dados por código postal, a consulta correta é:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image2.jpeg?expiry=1706486400000&hmac=CAghSN5AGAm3rrFIbCyr6dXPUlLcd6ezjfzkITtFVoQ

1. Pergunta 7

**Continuação do cenário 1**

Você termina a limpeza de seus conjuntos dados, então decide revisar o e-mail de Tayen mais uma vez para garantir que completou a tarefa plenamente. É uma coisa boa que você tenha verificado, porque você se esqueceu de identificar as pessoas que atuaram na diretoria ou no conselho de administração. Ela quer escrever uma nota de agradecimento, então você precisa localizá-los no banco de dados.

**Para recuperar apenas os registros queincluem pessoas que atuaram no conselho de administração ou na diretoria, qual é a consulta correta?**

**SELECT * FROM Donation_Form_List WHERE Board_Member = TRUE, Trustee = TRUE**

**SELECT * FROM Donation_Form_List WHERE Board_Member = "TRUE" OR Trustee = "TRUE"**

**SELECT * FROM Donation_Form_List WHERE Board_Member = "TRUE" AND Trustee = "TRUE"**

**SELECT * FROM Donation_Form_List WHERE Board_Member = TRUE AND Trustee = TRUE**

Correto

Para recuperar apenas os registros que incluem pessoas que atuaram no conselho de administração ou na diretoria, a instrução WHERE correta é:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image7.jpeg?expiry=1706486400000&hmac=qRMdeVewVIo8VfvQGCSczw_2IExoj5EY42uOaHOUfWQ

1. Pergunta 8

**Cenário 2, perguntas 8-13**

A campanha de mala direta de sua empresa foi muito bem-sucedida e a Food Justice Rock Springs continuou a parceria com a Directly Dynamic. Uma coisa em que você está trabalhando é atribuir números de identificação a todos os doadores. Isso permitirá que você limpe e organize as listas de forma mais eficaz.

Enquanto isso, outro membro da equipe está criando uma lista de prospectos que contém dados sobre pessoas que demonstraram interesse em se envolver com a Food Justice Rock Springs. Essas pessoas também recebem um ID exclusivo. Agora, você precisa comparar sua lista de doadores com o conjunto de dados de seu banco de dados e coletar determinados dados de ambos.

**Qual função SQL retornará registros com valores correspondentes em ambas as tabelas?**

**INNER JOIN**

**OUTER JOIN**

**RIGHT JOIN**

**LEFT JOIN**

Correto

Uma função INNER JOIN retornará registros com valores correspondentes em ambas as tabelas.

1. Pergunta 9

**Continuação do cenário 2**

Sua próxima tarefa é identificar a contribuição média dada pelos doadores nos dois últimos anos. Tayen usará essas informações para definir uma doação mínima para convidar doadores para um próximo evento.

**Você executou os cálculos para 2019, então agora você passa para 2020. Para retornar as contribuições médias em 2020 (contributions_2020), você usa a função AVG. Você usa a seguinte seção de uma consulta SQL para encontrar essa média e armazená-la na variável AvgLineTotal:**

AVG(contributions_2020) AS AvgLineTotal

---

**Verdadeiro**

**Falso**

Correto

Para retornar as contribuições médias em 2020, a parte correta da consulta SQL é:

AVG(contributions_2020) AS AvgLineTotal

---

1. Pergunta 10

**Continuação do cenário 2**

Agora que você forneceu a ela o valor médio da doação, Tayen decide convidar 50 pessoas para a grande inauguração de uma nova horta comunitária. Você retorna a sua planilha New Donor List para determinar quanto cada doador doou nos últimos dois anos. Você usará essas informações para identificar os 50 principais doadores e convidá-los para o evento.

**Qual é a sintaxe correta para somar os valores de contribuição nas células O2 e P2?**

**=SUM(O2,P2)**

**=SUM(O2*P2)**

**=SUM(“O2,P2”)**

**=SUM(O2/P2)**

Correto

Para somar as células O2 e P2, use a função =SUM(O2,P2). Você também pode usar a fórmula =O2+P2.

1. Pergunta 11

**Continuação do cenário 2**

Tayen informa você que ela está pensando em convidar qualquer pessoa que doou pelo menos USD 100 em 2018 também. No entanto, ela tem apenas cinco vagas. Ela pede que você informe quantas pessoas doaram pelo menos USD 100 para que ela possa determinar se elas também podem ser convidadas para o evento.

**Qual função de planilha você usa para contar quantas doações de USD 100 ou mais aparecem na coluna O (Contributions 2018)?**

**COUNTIF:**

**SUMIF**

**TOTAL**

**MAX**

Correto

Para contar quantas doações de USD 100 ou mais aparecem na Column Q, use a função COUNTIF. A sintaxe correta é =COUNTIF(O2:O210,">=100").

1. Pergunta 12

**Continuação do cenário 2**

A grande inauguração da horta comunitária foi um sucesso. Além dos 55 doadores que a Food Justice Rock Springs convidou, outros 20 doadores em potencial compareceram ao evento. Agora, Tayen quer saber mais sobre as doações que vieram de novos doadores em potencial em comparação com os doadores originais.

**Qual é a seção de uma consulta SQL que calculará a porcentagem de contribuições de doadores em potencial?**


**(Total_prospects * Total_donors / 100) AS Prospects_Percent**

**(“Total_prospects” , “Total_donors” * 100) AS Prospects_Percent**

**(Total_prospects + Total_donors = 100) AS Prospects_Percent**

**(Total_prospects / Total_donors * 100) AS Prospects_Percent**

Correto

Para identificar a porcentagem de contribuições de doadores em potencial, a consulta correta é:

(Total_prospects / Total_donors * 100) AS Prospects_Percent

1. Pergunta 13

**Continuação do cenário 2**

Sua equipe criou uma lista de clientes em potencial altamente eficaz para a Food Justice Rock Springs. Após alguns meses, muitos desses clientes em potencial tornam-se doadores. Agora, Tayen quer saber as três cidades principais onde esses novos doadores vivem. Ela usará essas informações para determinar se ainda é verdade que as pessoas que vivem mais perto de Rock Springs são mais propensas a doar.

**Qual cláusula você adiciona à seguinte consulta para classificar os doadores em cada cidade de maior a menor?**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4f8ee26b-578c-4184-992e-96c8058ea7d0image16.png?expiry=1706486400000&hmac=F_x4WyYCJfwP6v8QMHmaK145mUXt_35hYKo1gvJ2l-A

**ORDER BY COUNT(DonorID) ASC**

**ORDER BY CITY(DonorID) DESC**

**ORDER BY COUNT(DonorID) DESC**

**ORDER BY CITY(DonorID) ASC**

Correto

Para recuperar o número de doadores em cada cidade, classificados de maior para menor, a consulta SQL correta é: