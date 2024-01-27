# Primeiros passos com os cálculos de dados

- Cálculo de Dados

Fórmulas, condicionais com IF, SUMPRODUCT Function, tabelas dinâmica, consultas em SQL e tabelas temporárias.

- Fórmulas de cálculo comuns
- Formatação condicional
- Funções e Condilções
    - COUNTIF(B3:B50, “=1")
    - SUMIF(B3:B50, “=1”, C3:C50)

## Funções com várias condições

Nesta leitura, você aprenderá mais sobre funções condicionais e como construir funções com várias condições. Lembre-se de que as funções e fórmulas condicionais realizam cálculos de acordo com condições específicas. Anteriormente, você aprendeu a usar funções como **SUMIF** e **COUNTIF** que possuem uma condição. Você pode usar as funções **SUMIF** e **COUNTIF** se tiver duas ou mais condições. Você aprenderá a sintaxe básica no Planilhas Google e verá um exemplo.

Consulte os recursos no final deste texto para obter informações sobre funções semelhantes no Microsoft Excel.

## **SUMIF para SUMIFS**

A sintaxe básica de uma função SUMIF é: **=SUMIF(range, criterion, sum_range)**

O primeiro intervalo é onde a função pesquisará a condição que você definiu. O criterion é a condição que você está aplicando e o sum_range é o intervalo de células que será incluído no cálculo.

Por exemplo, você pode ter uma tabela com uma lista de despesas, seus custos e a data em que ocorreram.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/MUoc_j4ZR5-KHP4-GdefNg_45534cc122b045eeb70210ac1542d882_Screenshot-2020-12-14-at-3.32.37-PM.png?expiry=1706400000000&hmac=2xcBW8qeRVIwYlwJmE1LlwwClU5l5uf7vypy5AehLLc

Coluna A: A1 - Despesa A2 - Combustível A3 - Alimentação A4 - Táxi A5 - Café A6 - Combustível A7 - Táxi A8 - Café A9 - Alimentação coluna B: B1 - Preço B2 - $ 48,00 B3 - $ 12,34 B4 - $ 21,57 A5 - $ 2,50 A6 - $ 36,00 A7 - $ 15,88 A8 - $ 4,15 A9 - $ 6,75 coluna C: C1 - Data C2 - 14/12/2020 C3 - 14/12/2020 C4 - 14/12/2020 C5 - 15/12/2020 C6 - 15/12/2020 C7 - 15/12/2020 C8 - 15/12/2020 C9 - 15/12/2020

Você pode usar SUMIF para calcular o preço total do combustível nesta tabela, assim:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/GIEjJ2LsSNeBIydi7AjX-w_aaea6bbb16cd46f0818242bf91377876_Screenshot-2020-12-14-at-3.33.28-PM.png?expiry=1706400000000&hmac=W2wv1qnFkDgxezzKA_BwO6MzK4vT15x1KXJlL3600R8

Mas você também pode incorporar várias condições usando a função SUMIFS. SUMIF e SUMIFS são muito semelhantes, mas SUMIFS podem incluir várias condições.

A sintaxe básica é:  **=SUMIFS(sum_range, criteria_range1, criterion1, [criteria_range2, criterion2, ...])**

Os colchetes informam que isso é opcional. As reticências no final da instrução informam que você pode ter quantas repetições desses parâmetros forem necessárias. Por exemplo, se você quiser calcular a soma dos custos de combustível para uma data nesta tabela, você pode criar uma instrução SUMIFS com várias condições, assim:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/uKJWzRo7T9SiVs0aO4_UBg_e15e5724878241c0b57bb42101a52509_Screenshot-2020-12-14-at-3.36.11-PM.png?expiry=1706400000000&hmac=KNZ0hIJabjHyTwi79Po9HF3e1qsCUQbhE1sgBf7IvwI

Esta fórmula lhe dá o custo total de cada despesa de combustível a partir da data indicada nas condições. Neste exemplo, C1:C9 é nosso segundo criterion_range e a data 15/12/2020 é a segunda condição. Contanto que você siga a sintaxe básica, pode adicionar até 127 condições a uma instrução SUMIFS!

## **COUNTIF para COUNTIFS**

Assim como a função SUMIFS, COUNTIFS permite criar uma função COUNTIF com várias condições.

A sintaxe básica para COUNTIF é: **=COUNTIF(range, criterion)**

Assim como na SUMIF, você define o intervalo e, em seguida, a condição que precisa ser atendida. Por exemplo, se você quiser contar o número de vezes que Alimentação apareceu na coluna Despesas, você pode usar uma função COUNTIF assim:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/EcRO2RArQMuETtkQK8DLHQ_f63cbb32662a4e1881a9f74e05d69f5d_Screenshot-2020-12-15-at-10.01.44-AM.png?expiry=1706400000000&hmac=B6TZcP4Qm4myDy1MH9n1i-41gXo2tCq-oKskVlwkaM0

COUNTIFS têm a mesma sintaxe básica que SUMIFS:

=COUNTIFS(criteria_range1, criterion1, [criteria_range2, criterion2, ...])

O criteria_range e o criterion estão na mesma ordem, e você pode adicionar mais condições ao final da função. Então, se você quiser encontrar o número de vezes que Café apareceu na coluna Despesas em 15/12/2020, você pode usar COUNTIFS para aplicar essas condições, assim:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/lL1mBUq9QHa9ZgVKvSB2QQ_587db9c05ab149a085ac35267ba2aaeb_Screenshot-2020-12-15-at-10.08.35-AM.png?expiry=1706400000000&hmac=4Qy0p6CzcgnNxlf5pTZ5_7fZnwSGGHRQRq5PJLLM2aM

Esta fórmula segue a sintaxe básica para criar condições para “Café” e a data específica. Agora podemos encontrar todos os casos em que ambas as condições são verdadeiras.

## **Para mais informações**

SUMIFS e COUNTIFS são apenas dois exemplos de funções com várias condições. Eles ajudam a demonstrar como várias condições podem ser incorporadas à sintaxe básica de uma função. Mas existem outras funções com várias condições que você pode usar em sua análise de dados. Há muitos recursos disponíveis online para ajudá-lo a começar com essas outras funções:

- **[Como usar a função IFS do Excel](https://exceljet.net/excel-functions/excel-ifs-function)**: Este recurso inclui uma explicação e um exemplo da função IFS no Excel. Esta é uma ótima referência se você estiver interessado em aprender mais sobre IFS. O exemplo é uma maneira útil de entender essa função e como ela pode ser usada.
- **[VLOOKUP no Excel com vários critérios](https://exceljet.net/formula/vlookup-with-multiple-criteria)**: Semelhante ao recurso anterior, este recurso apresenta mais detalhes sobre como usar a VLOOKUP com vários critérios. Ser capaz de aplicar a VLOOKUP com vários critérios é uma habilidade útil, então confira este recurso para obter mais orientações sobre como você pode começar a usá-la em seus próprios dados de planilha.
- **[INDEX e MATCH no Excel com vários critérios](https://exceljet.net/formula/index-and-match-with-multiple-criteria):** Este recurso explica como usar as funções INDEX e MATCH com vários critérios. Ele também inclui um exemplo que ajuda a demonstrar como essas funções funcionam com vários critérios e dados reais.
- **[Usar IF com funções AND, OR e NOT no Excel](https://support.microsoft.com/en-us/office/using-if-with-and-or-and-not-functions-d895f58c-b36c-419e-b1f2-5c193a236d97):** Este recurso combina IF com as funções AND, OR e NOT para criar funções mais complexas. Ao combinar essas funções, você pode executar suas tarefas com mais eficiência e abranger mais critérios de uma só vez.

## Atividade Prática: Como Trabalhar com Condições

**Nota Recebida:** 100%

**Para ser Aprovado:** 100% ou superior

### Pergunta 1: Uso de COUNTIF e COUNTIFS

### Visão Geral

- **Objetivo:** Aprender a usar funções condicionais como COUNTIF, SUMIF, AVERAGEIF, e MAXIFS.
- **Aplicação:** Estas funções são úteis para consultas complexas em planilhas.

### Uso da Função COUNTIF

- **Exemplo:** Para contar o número de vendedores em Nova York: `=COUNTIF(B2:B21, "NY")`.
- **Resultado:** Retorna o número de células em `B2:B21` que correspondem ao critério "NY".

### Uso da Função COUNTIFS

- **Exemplo:** Para determinar quantos vendedores em Nova York têm apenas 1 cliente: `=COUNTIFS(B2:B21, "NY", C2:C21, "1")`.
- **Resultado:** Retorna o número de vendedores em Nova York (`B2:B21`) que possuem exatamente um cliente (`C2:C21, "1"`).

### Pergunta 2: Uso de Funções Condicionais com Múltiplas Restrições

### Uso Efetivo de Funções Condicionais

- **Aplicação:** Usar funções condicionais com múltiplas restrições, como SUMIFS, é ideal para análises que requerem consideração simultânea de várias condições.
- **Benefício:** Permite análises de dados mais segmentadas e detalhadas, proporcionando insights mais precisos do que funções com uma única condição.

### Reflexão

- **Conclusão:** Ao usar funções mais complexas, você pode expandir seu conjunto de habilidades em planilhas e analisar dados com mais eficiência em programas como o Planilhas Google e o Microsoft Excel.
- **Importância:** O sufixo -IF permite implementar consultas e funções mais complexas, tornando possível a execução de tarefas em matrizes que atendem a um ou mais critérios.

---

Você pode usar estas anotações para se referir rapidamente aos pontos principais da atividade prática sobre como trabalhar com condições em planilhas.

- Funções compostas
    - SUMPRODUCT
    - =SUMPRODUCT(array1, [array2]…
    - Array is a collection os values

## Teste de Conhecimento sobre Cálculos de Dados

**Nota Recebida:** 100%

**Para ser Aprovado:** 80% ou superior

### Pergunta 1: Fórmula de Planilha para Multiplicação

- **Questão:** Qual é a fórmula de planilha correta para multiplicar 50 e 233?
- **Resposta Correta:** `=50*233`
- **Explicação:** A fórmula começa com um sinal de igual (=) e utiliza um asterisco (*) como operador de multiplicação.

### Pergunta 2: Soma Condicional em Planilha

- **Contexto:** Seleção de uma planilha com despesas e quantias.
- **Questão:** Para somar apenas os valores da coluna B que custam mais de USD 150, qual é a sintaxe correta?
- **Resposta Correta:** `=SUMIF(B2:B12,">150")`
- **Explicação:** B2:B12 é o intervalo e mais de 150 (>150) é o critério para a soma condicional.

### Pergunta 3: Identificação de uma Matriz em Planilha

- **Contexto:** Planilha da empresa Cosmetics Inc.
- **Questão:** Qual das opções é um exemplo de uma matriz nesta planilha?
- **Resposta Correta:** Os valores nas células B2 a B31
- **Explicação:** Uma matriz é uma coleção de valores em células de uma planilha, e B2 a B31 representam essa coleção.

---

# Mude… mude… mude…

- Tabelas Dinâmicas

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/ffed944e-99a2-488f-a482-6ba67bb9a413/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/fa3bcdeb-a023-4b37-ad95-1a6ac5cd29b0/Untitled.png)

Um campo calculado dentro de uma tabela dinâmica é usado para realizar cálculos com base nos valores de outros campos. O campo calculado é adicionado como uma linha ou coluna adicional em uma tabela dinâmica.

## Elementos de uma tabela dinâmica

Anteriormente, você aprendeu que a tabela dinâmica é uma ferramenta usada para classificar, reorganizar, agrupar, contar, totalizar ou fazer a média dos dados em planilhas. Nesta leitura, você aprenderá mais sobre as partes de uma tabela dinâmica e como os analistas de dados as usam para resumir dados e responder a perguntas sobre seus dados.

As **tabelas dinâmicas** possibilitam a visualização de dados de várias maneiras para identificar insights e tendências. Elas podem ajudar a entender rapidamente conjuntos de dados maiores, comparando métricas, realizando cálculos e gerando relatórios. Eles também são úteis para responder a perguntas específicas sobre seus dados.

Uma tabela dinâmica tem quatro partes básicas: linhas, colunas, valores e filtros.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/gzTugf-cSQa07oH_nDkGVw_f31e3c2b726e48d08a61f7d09d93c2f1_Screenshot-2021-07-12-1.20.23-PM-1-.png?expiry=1706486400000&hmac=J6-UPzHye0TFKoLVa1res5c66QSlmhUeW0r-U9y0M04

As **linhas** de uma tabela dinâmica organizam e agrupam os dados selecionados horizontalmente. Por exemplo, no vídeo [Como trabalhar com tabelas dinâmicas](https://www.coursera.org/learn/analisar-os-dados-para-responder-as-perguntas/lecture/HCOme/comece-trabalhando-com-tabelas-dinamicas), os valores de Data de Lançamento foram usados para criar linhas que agrupavam os dados por ano.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/goLsfckvSv2C7H3JLwr94A_ab77d9d73f9b42809606e30d1ee1bbf1_Screenshot-2021-07-13-8.35.12-AM-1-.png?expiry=1706486400000&hmac=59uMuiU1AYgnnRfhCNE7QXS0ZzvwbxHoIZ-RI6zMlZ0

As **colunas** organizam e exibem valores de seus dados verticalmente. Semelhante às linhas, as colunas podem ser extraídas diretamente do conjunto de dados ou criadas usando **valores.** Os **valores** são usados para calcular e contar dados. É aqui que você insere as variáveis que deseja medir. É assim também que você cria campos calculados em sua tabela dinâmica. Para relembrar seu conhecimento, um **campo calculado** é um novo campo em uma tabela dinâmica que realiza determinados cálculos com base nos valores de outros campos

No exemplo anterior de dados de filmes, o editor de Valores criou colunas para a tabela dinâmica, incluindo as colunas SUM da Receita de Bilheteria, AVERAGE da Receita de Bilheteria e COUNT da Receita de Bilheteria.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/DF08HQOLQ7CdPB0Di3OwAg_a9918b5905c3410382e10332cbdd55f1_unnamed-16-.png?expiry=1706486400000&hmac=4q3tWXKcaEuZ7yZmxZZkD2u0S1MAkKy5Gi2mBRL0jAY

Por fim, a seção de **filtros** de uma tabela dinâmica permite que você aplique filtros com base em critérios específicos – assim como filtros em planilhas comuns! Por exemplo, um filtro foi adicionado à tabela dinâmica de dados de filmes para incluir apenas filmes que geraram menos de USD 10 milhões em receita.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/vbTJ3Q9uRLe0yd0PbpS3vQ_02be9c5b3bfe43efb38cb631210536f1_Screenshot-2021-07-13-9.15.28-AM-1-.png?expiry=1706486400000&hmac=RDqeZzxtIyJx-4Umsb_4qjlLlDIS2kjxK9n2bMwAQIo

Ser capaz de usar todas as quatro partes do editor de tabela dinâmica permite que você compare diferentes métricas de seus dados e execute cálculos, o que te ajuda a obter insights valiosos.

## **Como usar tabelas dinâmicas para análise**

As tabelas dinâmicas podem ser uma ferramenta útil para responder a perguntas específicas sobre um conjunto de dados para que você possa compartilhar respostas rapidamente com as partes interessadas. Por exemplo, um analista de dados que trabalha em uma loja de departamentos foi solicitado a determinar o total de vendas de cada departamento e o número de produtos que cada um vendeu. Eles também estavam interessados em saber exatamente qual departamento gerava mais receita.

Em vez de fazer alterações nos dados originais da planilha, eles usaram uma tabela dinâmica para responder a essas perguntas e comparar facilmente a receita de vendas e o número de produtos vendidos por cada departamento.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/-VkZUiJoSsmZGVIiaGrJ6Q_a44072b9be354ed0b516e725f29365f1_Screenshot-2021-07-13-11.04.58-AM-1-.png?expiry=1706486400000&hmac=BHMZDR-woCgady9FgTzVIHlna1tWjYR42yk9n3PBlgw

Eles usaram o departamento como as linhas dessa tabela dinâmica para agrupar e organizar o restante dos dados de vendas. Em seguida, eles inseriram dois valores como colunas: a SUM das vendas e uma contagem dos produtos vendidos. Eles também classificaram os dados pela coluna SUM de vendas para determinar qual departamento gerou mais receita.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/OKSyrTgRQBiksq04EWAYmw_3f070771a65043dc8a466f2e8053d3f1_Screenshot-2021-07-13-10.45.55-AM-1-.png?expiry=1706486400000&hmac=WERi5MUuVcUPzQmLJi9sYOF2NAbSf0dQWbjTs_UbUZY

Agora eles sabem que o Departamento de brinquedos gerou a maior receita!

As tabelas dinâmicas são uma ferramenta eficaz para analistas de dados que trabalham com planilhas porque destacam os principais insights dos dados da planilha sem precisar fazer alterações nela. A seguir, você criará sua própria tabela dinâmica para analisar dados e identificar tendências que serão altamente valiosas para as partes interessadas.

## Como usar tabelas dinâmicas para análise

Nesta leitura, você aprenderá como criar e usar tabelas dinâmicas para análise de dados. Você também obterá alguns recursos sobre tabelas dinâmicas que poderá salvar para sua própria consulta quando começar a criá-las por conta própria. As **tabelas dinâmicas** são uma ferramenta de planilha que permitem diversas visualizações de dados para encontrar insights e tendências.

As tabelas dinâmicas permitem que você compreenda grandes conjuntos de dados, fornecendo ferramentas para comparar métricas facilmente, realizar cálculos rapidamente e gerar relatórios legíveis. Você pode criar uma tabela dinâmica para ajudá-lo a responder a perguntas específicas sobre seus dados. Por exemplo, se você estiver analisando dados de vendas, poderá usar tabelas dinâmicas para responder a perguntas como “Qual mês teve mais vendas?” e “Quais produtos geraram mais receita este ano?” Quando você precisa de respostas para perguntas sobre seus dados, as tabelas dinâmicas podem ajudá-lo a eliminar a confusão e se concentrar apenas nos dados de que você precisa.

## **Criar sua tabela dinâmica**

Antes de poder analisar dados com tabelas dinâmicas, você precisa criar uma tabela dinâmica com seus dados. Veja a seguir as etapas para criar uma tabela dinâmica no Planilhas Google, mas a maioria dos programas de planilha possui ferramentas semelhantes.

Primeiro, abra o menu **Data** na barra de ferramentas; haverá uma opção para **Pivot table** ou Tabela dinâmica.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/nAxKmtDxQWiMSprQ8aFoMA_32568c83b4794bb8b493b631295dc16c_DataMenu.png?expiry=1706486400000&hmac=6TvK-h9q0pu21VCzFH_nXVi42bFkkAnAcUvicGWMHbk

Aparecerá este menu pop-up:

There is an option to select New sheet or Existing sheet and a Create button

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/O5Foq0BySvCRaKtActrwGg_9ff0b1fdbf8046398c7ee2d5abdc2044_Screenshot-2020-11-16-at-11.47.45-AM.png?expiry=1706486400000&hmac=OcTmlTEN0yrGWDO4lUuTfMENVi2i8PZXwfFTiv2r8X8

Há uma opção para selecionar New sheet ou Existing sheet e um botão Create.

Geralmente, você deseja criar uma nova planilha para sua tabela dinâmica para manter seus dados brutos e sua análise separados. Você também pode armazenar todos os seus cálculos em um só lugar para facilitar a consulta. Depois de criar sua tabela dinâmica, haverá um editor de tabela dinâmica que você pode acessar à direita de seus dados.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/nY3EyYVbTViNxMmFWy1YVQ_667552fecaa54c25b60ece296375708c_unnamed-2-.png?expiry=1706486400000&hmac=UIy0_Y9UKeqRgrKPXYKbWJtjStvgon3oL2mEsP-6TrQ

É aqui que você poderá personalizar sua tabela dinâmica, incluindo quais variáveis deseja incluir para sua análise.

## **Como usar sua tabela dinâmica para análise**

Você pode executar uma ampla variedade de tarefas de análise com suas tabelas dinâmicas para obter rapidamente insights significativos de seus dados, incluindo a execução de cálculos, classificação e filtragem de seus dados. Abaixo está uma lista de recursos online que te ajudarão a aprender sobre como realizar cálculos básicos em tabelas dinâmicas, bem como recursos para aprender sobre classificação e filtragem de dados em suas tabelas dinâmicas.

### **Realizar cálculos                                        Classifique seus dados**

| Microsoft Excel | Planilhas Google |
| --- | --- |
| https://support.microsoft.com/en-us/office/calculate-values-in-a-pivottable-11f41417-da80-435c-a5c6-b0185e59da77: introdução do Suporte da Microsoft aos cálculos em tabelas dinâmicas do Excel. Este é um ponto de partida útil se você estiver aprendendo a realizar cálculos com tabelas dinâmicas especificamente no Excel. | https://support.google.com/docs/answer/1272900?co=GENIE.Platform%3DDesktop&hl=en: Este guia se concentra no uso de tabelas dinâmicas no Planilhas Google e fornece instruções para criar campos calculados. Este é um guia rápido de instruções que você pode salvar e consultar como um lembrete rápido sobre como adicionar campos calculados. |
| https://exceljet.net/pivot-table/pivot-table-calculated-field-example: Este recurso inclui um exemplo detalhado de uma tabela dinâmica sendo usada para cálculos. Este processo passo a passo demonstra como os campos calculados funcionam e fornece uma ideia de como podem ser usados para análise. | https://infoinspired.com/google-docs/spreadsheet/all-about-calculated-field-in-pivot-table-in-google-sheets/: Este é um guia completo de campos calculados para o Planilhas Google. Se você estiver trabalhando com o Planilhas e estiver interessado em aprender mais sobre tabelas dinâmicas, este é um ótimo recurso. |
| https://powerspreadsheets.com/pivottable-calculated-fields/: Este tutorial para criar seus próprios campos calculados em tabelas dinâmicas é um recurso muito útil para salvar e marcar como favorito para quando você começar a aplicar campos calculados em suas próprias planilhas. | https://www.benlcollins.com/spreadsheets/pivot-tables-google-sheets/: Este guia para iniciantes aborda os conceitos básicos de tabelas dinâmicas e campos calculados no Planilhas Google e usa exemplos e vídeos de instruções para ajudar a demonstrar esses conceitos. |

| Microsoft Excel | Planilhas Google |
| --- | --- |
| https://support.microsoft.com/en-us/office/sort-data-in-a-pivottable-or-pivotchart-e41f7107-b92d-44ef-861f-24430830450a: Este é um guia de instruções do Suporte da Microsoft para classificar dados em tabelas dinâmicas. Esta é uma referência útil se você estiver trabalhando com o Excel e estiver interessado em verificar como a filtragem aparece especificamente no Excel. | https://support.google.com/docs/answer/7572895?co=GENIE.Platform%3DDesktop&hl=en: Este guia do Suporte do Google se concentra na classificação de tabelas dinâmicas no Planilhas Google. Esta é uma referência útil e rápida se você estiver trabalhando na classificação de dados no Planilhas e precisar de um guia passo a passo. |
| https://www.tutorialspoint.com/excel_pivot_tables/excel_pivot_tables_sorting_data.htm: Este tutorial para classificar dados em tabelas dinâmicas inclui um exemplo com dados reais que demonstra como funciona a classificação em tabelas dinâmicas do Excel. Este exemplo é uma ótima maneira de experimentar todo o processo do início ao fim. | https://infoinspired.com/google-docs/spreadsheet/pivot-table-columns-in-custom-order-in-google-sheets/: Este guia detalhado usa dados reais para demonstrar como o processo de classificação das tabelas dinâmicas do Planilhas Google funciona. Este é um ótimo recurso se você precisar de um guia um pouco mais detalhado com capturas de tela do ambiente real do Planilhas. |
| https://exceljet.net/lessons/how-to-sort-a-pivot-table-by-value: Esta fonte usa um exemplo para explicar a classificação por valor em tabelas dinâmicas. Ela inclui um vídeo, que é um guia útil se você precisar de uma demonstração do processo. | https://medium.com/actiondesk/pivot-table-ascending-descending-order-in-google-sheets-and-excel-1-minute-ultimate-beginners-8f9f4c560492: Este guia para iniciantes de 1 minuto é uma ótima maneira de relembrar a classificação em tabelas dinâmicas se você estiver interessado em uma revisão rápida. |

### **Filtre seus dados                                            Formatar seus dados**

| Microsoft Excel | Planilhas Google |
| --- | --- |
| https://support.microsoft.com/en-us/office/filter-data-in-a-pivottable-cc1ed287-3a97-4e95-b377-ddfafe79fa8f: Este recurso da página do Suporte da Microsoft fornece uma explicação sobre a filtragem de dados em tabelas dinâmicas no Excel. Se você estiver trabalhando em planilhas do Excel, este é um ótimo recurso para marcar como favorito para consulta rápida. | https://support.google.com/docs/answer/7572895?co=GENIE.Platform%3DDesktop&hl=en: Esta é a página do Suporte do Google sobre filtragem de dados da tabela dinâmica. Este é um recurso útil se você estiver trabalhando com tabelas dinâmicas no Planilhas Google e precisar de um recurso rápido para revisar o processo. |
| https://www.dummies.com/software/microsoft-office/excel/how-to-filter-excel-pivot-table-data/: Este guia de instruções para filtrar dados em tabelas dinâmicas demonstra o processo de filtragem em uma planilha do Excel com dados e inclui dicas e lembretes para quando você começar a usar essas ferramentas por conta própria. | https://infoinspired.com/google-docs/spreadsheet/filter-multiple-values-in-pivot-table-sheets/: Este guia inclui detalhes sobre como filtrar vários valores nas tabelas dinâmicas do Planilhas Google. Este recurso expande algumas das funcionalidades que você já aprendeu e te configura para criar filtros mais complexos no Planilhas Google. |

| Microsoft Excel | Planilhas Google |
| --- | --- |
| https://support.microsoft.com/en-us/office/design-the-layout-and-format-of-a-pivottable-a9600265-95bf-4900-868e-641133c05a80: Este artigo do Suporte da Microsoft descreve como alterar o formato da tabela dinâmica aplicando um estilo predefinido, linhas com faixas e formatação condicional. | https://support.google.com/a/users/answer/9308944#group_data_in_a_pivot_table: Este artigo da Central de Ajuda fornece informações sobre como editar uma tabela dinâmica para alterar seu estilo e agrupar dados. |

## Atividade Prática: Tabelas Dinâmicas em Planilhas de Empresa de Móveis

**Nota Recebida:** 100%

**Para ser Aprovado:** 80% ou superior

### Pergunta 1: Propósito da Tabela Dinâmica

- **Tabela Dinâmica:**
    - **Produtos e Preços de Compra**
    - Cama: USD 799,99
    - Estante: USD 58,89
    - ... (outros produtos)
    - Total Geral: 12604,635
- **Objetivo:** Calcular a soma dos preços de compra individuais para cada tipo de produto. A tabela dinâmica também fornece um total geral para todas as compras de produtos.

### Pergunta 2: Ajuste da Tabela Dinâmica para Produtos Bege

- **Tarefa:** Ajustar a tabela dinâmica para mostrar dados apenas de produtos bege.
- **Solução:** Adicionar um filtro que exiba apenas produtos na categoria "bege".

### Pergunta 3: Encontrando o Valor Médio com Tabela Dinâmica

- **Situação:** Tabela dinâmica com campo calculado mostrando valores como USD 0,00.
- **Ferramenta Recomendada:** Usar um campo calculado para encontrar um valor médio usando valores gerados em uma tabela dinâmica. Um campo calculado permite realizar cálculos específicos com base nos valores de outros campos da tabela dinâmica.

---

# Aprenda mais cálculos SQL

- Consultas e Cálculos

```sql
SELECT
	columnA,
	columnB,
	columnA + columnB as ColumnX
FROM
	table_name
```

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
	(Small_Bags / Total_Bags) * 100 AS Small_Bags_Percent
WHERE
	avocado_data.avocado_prices
WHERE 
	Total_Bags <> 0
```

- Cálculos com outras instruções

```sql
SELECT
	EXTRACT(YEAR FROM STARTIME) AS year,
	COUNT(*) AS number_of_rides
FROM
	bigquery-public-data.net_york.citibike_trips
GROUP BY
	year
ORDER BY
	year DESC
```

Usando cálculos com múltiplos operadores no SQL para analisar dados de passageiros do metrô, é possível identificar tendências de crescimento ou declínio, horários de pico, e a eficiência de rotas e estações ao longo do tempo.

# O processo de validação de dados

- Verifique e verifique novamente

## Tipos de validação de dados

A tabela a seguir descreve o propósito, os exemplos e as limitações de seis tipos de validação de dados. Os cinco primeiros são tipos de validação associados aos dados (tipo, intervalo, restrição, consistência e estrutura) e o sexto tipo se concentra na validação do código do aplicativo usado para aceitar dados da contribuição do usuário.

Como analista de dados júnior, talvez você não execute todas essas validações. Mas você pode perguntar se e como os dados foram validados antes de começar a trabalhar com um conjunto de dados. A validação de dados ajuda a garantir a integridade dos dados. Também lhe dá a confiança de que os dados que você está usando estão limpos. A lista a seguir descreve seis tipos de validação de dados e o propósito de cada um e inclui exemplos e limitações.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/bwKS3nJvQoqCkt5yb2KKtg_381561b0be794604bbab4b371ca61bc9_Screen-Shot-2021-02-08-at-5.22.06-PM.png?expiry=1706486400000&hmac=6zZUnAdvTSEwDBtZKTG6GNHL6eQtsfyq6a8goO7-viY

### 1. Tipo de dado

- **Propósito**: Verificar se os dados correspondem ao tipo de dados definido para um campo.
- **Exemplo**: Os valores de dados para as séries escolares de 1 a 12 devem ser um tipo de dados numérico.
- **Limitações**: O valor de dados 13 passaria na validação do tipo de dados, mas seria um valor inaceitável. Para este caso, a validação do intervalo de dados também é necessária.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/dPyj72GhQXS8o-9hoTF0Ag_839574976de44a4b9a3ec45f4e4e36e2_Screen-Shot-2021-02-08-at-5.25.03-PM.png?expiry=1706486400000&hmac=l-uejtay8pKiOUNOjUmJsPaP_8AJTWQHwTWc_B097V8

### 2. Intervalo de dados

- **Propósito**: Verificar se os dados estão dentro de um intervalo aceitável de valores definidos para o campo.
- **Exemplo**: Os valores dos dados para as séries escolares devem ser valores entre 1 e 12.
- **Limitações**: O valor de dados 11,5 estaria no intervalo de dados e também passaria como um tipo de dados numérico. Mas, seria inaceitável porque não há meias séries. Para este caso, a validação da restrição de dados também é necessária.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/DUa8GZEkTR6GvBmRJC0emw_a9e6271e8f1c4cb0820ec3d6ee34f4eb_Screen-Shot-2021-02-08-at-5.27.40-PM.png?expiry=1706486400000&hmac=yKMRNKIPbNejrUjxkYQtD7uSBpv4zwe46iLlMr6cXD0

3. Restrições de dados

- **Propósito**: Verificar se os dados atendem a determinadas condições ou critérios para um campo. Isso inclui o tipo de dados inseridos, bem como outros atributos do campo, como número de caracteres.
- **Exemplo**: Restrição de conteúdo: Os valores de dados para as séries escolares de 1 a 12 devem ser números inteiros.
- **Limitações**: O valor de dados 13 é um número inteiro e passaria na validação de restrição de conteúdo. Mas seria inaceitável, já que 13 não é uma série escolar reconhecida. Para este caso, a validação do intervalo de dados também é necessária.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Xlu9FFgIRDGbvRRYCFQx-w_6eaa5307239541e9a5e0c77a343f9c8b_Screen-Shot-2021-02-08-at-5.30.56-PM.png?expiry=1706486400000&hmac=Dh8eSUbLeOcF_ClPmmo8Hrma_Mr260Z5-hNI-jqBqpM

4. Consistência de dados

- **Propósito**: Verificar se os dados fazem sentido no contexto de outros dados relacionados.
- **Exemplo**: Os valores de dados para as datas de envio do produto não podem ser anteriores às datas de produção do produto.
- **Limitações**: Os dados podem ser consistentes, mas ainda incorretos ou imprecisos. Uma data de envio pode ser posterior a uma data de produção e ainda estar errada.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/6kdSdq1vQfeHUnatbwH3Lg_02d9444056b340e58377aa792ecb0d43_Screen-Shot-2021-02-08-at-5.33.03-PM.png?expiry=1706486400000&hmac=3oYlKWfp-CoilOFk-BX2qba5a6I5ucJlLzxOcDA_-UU

### 5. Estrutura de dados

- **Propósito**: Verificar se os dados seguem ou estão em conformidade com uma estrutura definida.
- **Exemplo**: As páginas da web devem seguir uma estrutura prescrita para serem exibidas corretamente.
- **Limitações**: Uma estrutura de dados pode estar correta com os dados ainda incorretos ou imprecisos. O conteúdo de uma página da web pode ser exibido corretamente e ainda conter as informações erradas.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Saof9D7aT8eqH_Q-2k_Hyg_d144822d70ac4ec3b22b5126c0b32e60_Screen-Shot-2021-02-08-at-5.34.42-PM.png?expiry=1706486400000&hmac=TyvGwRsGE52ANBUXiBrQFY5lLgzCx8us8Dqs4uJfXOA

### 6. Validação de código

- **Propósito:** Verificar se o código do aplicativo executa sistematicamente qualquer uma das validações mencionadas anteriormente durante a entrada de dados do usuário.
- **Exemplo:** Problemas comuns descobertos durante a validação de código incluem: mais de um tipo de dados permitido, verificação de intervalo de dados não feita ou final de strings de texto mal definido.
- **Limitações**: A validação de código pode não validar todas as variações possíveis com entrada de dados.

## Registro de aprendizagem: Conclua sua lista de verificação de análise de dados

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/ATWc3dc0SW61nN3XNPlukw_acb113cde65546219f7f60aad489357d_pencil-journal-entry.png?expiry=1706486400000&hmac=kXUzpkJuOiR0M84cQNRA3KmtfRgl2j29b5uMA-ODAwU

## **Visão geral**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Z65IW3QCSOmuSFt0Aijp8w_914270a3d2e84027b46e404f7a52007f_line-y.png?expiry=1706486400000&hmac=qnceQ2wiU7NAx81Vq4N8Wcot1kftL28-5vEE-OFE3fg

Em um registro de aprendizagem anterior, você começou a criar uma lista de verificação de análise de dados de alto nível. Agora, você concluirá essa lista de verificação com etapas mais detalhadas. Ao concluir esta atividade, você terá uma lista de verificação de análise de dados aprofundada para ajudá-lo a se manter organizado durante os projetos de análise. Como analista de dados, manter-se organizado garante que você não cometa erros ou perca nenhuma etapa - economizando tempo e esforço!

## **Conclua sua lista de verificação**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/SL8Kv9EMTV-_Cr_RDB1fXA_2f5ff69dcea8417983fab756eabb1870_line-y.png?expiry=1706486400000&hmac=vqA6lrNdY7TgfeXBL4UWVyEXfGMcGfL_GEfQuckgsJk

O esboço de alto nível de sua lista de verificação foi baseado nas fases do processo de análise de dados: **Perguntar, preparar, processar, analisar, compartilhar** e **agir**.

Agora, você pode preencher cada etapa de sua lista de verificação de alto nível com subetapas detalhadas. Por exemplo, para a fase de Processamento, você provavelmente tem uma etapa para limpar os dados. Você pode dividir esta etapa para incluir subetapas detalhadas, como verificar se cada variável é uma coluna e que cada observação é uma linha.

Você pode criar uma etapa em sua lista de verificação como esta:

**Fase de processamento**

Etapa X: Limpar os dados

- Cada variável é uma coluna?
- Cada observação é uma linha?

Este exemplo usa uma tarefa de análise de dados de alto nível, como limpeza de dados, e a divide em etapas mais específicas. Por fim, você decide o quão detalhada deseja que sua lista de verificação seja e quais etapas específicas incluir. Esta é uma ferramenta útil para você, para que você possa personalizá-la como quiser!

Você pode não saber como detalhar todas as fases do processo de análise de dados. Aqui estão algumas perguntas que você pode considerar enquanto pensa sobre isso:

- Quais são as etapas de alto nível que você precisa seguir? Como as fases de análise podem ajudá-lo a organizar todo o processo?
- Quais detalhes específicos são necessários para concluir essas etapas de alto nível?
- Como você pode simplificar cada etapa à medida que avança? Existem atalhos que podem ajudá-lo?
- Existem etapas que correm maior risco de serem esquecidas? Em caso afirmativo, como sua lista de verificação pode lembrá-lo de concluir essas etapas?

Você sempre pode adaptar e adicionar à sua lista de verificação à medida que tiver novas ideias ou conforme as necessidades do seu projeto mudarem.

No modelo de registro de aprendizagem vinculado abaixo, copie e cole sua lista de verificação original e complete-a com as etapas e tarefas específicas que você deseja adicionar.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/rsXBDDiKT_aFwQw4ik_25g_e04af44e40aa4d7b9dee5d458cf80f9c_dotted-line-left.png?expiry=1706486400000&hmac=Zn04R-cAq4B22_wo1JKxPe5XauR34GqSTVMmUPvdIts

### **Acessar seu registro de aprendizagem**

Para usar o modelo deste item do curso, clique no link abaixo e selecione “Usar modelo”.

Link para o modelo de registro de aprendizagem: [Conclua sua lista de verificação de análise de dados](https://docs.google.com/document/d/1D8bAGx7uY2gMb18g54ecOrTIqrrlU3SEkK--I3LqXd8/template/preview)

OU

Caso você não tenha uma conta do Google, faça o download direto do modelo no anexo abaixo.

[DAC5M4L5R2-ATTACHMENT_PORDOCX File](https://d3c33hcgiwev3.cloudfront.net/_jRcZnS7T6W0XGZ0uz-leg_5c51595300fb4f76a93af06a69ba67f1_DAC5M4L5R2-ATTACHMENT_POR.docx?Expires=1706486400&Signature=TzuSzFwBUn2Rx-m~IO9qQizAJdni9-ITAvZhLWFZBhgx3ysIiD9Uq70Yw9Qb0fGjO2TcuwD2IHBBAFZXonh~yCozxxqtPH7paeY~8skmLBeCL8eptr4v671lL7cXWt3bmoaPl26U4pwXT1TOR5QQHE1nBDCHuLmdSgCM0~m95IA_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/WaEfVvs2Q9qhH1b7NqPaTw_f88507339bd64f958375b05add6117f8_dotted-line-right.png?expiry=1706486400000&hmac=ytvBQLCrNdm-HEkKZcwulpCCZwM2YUk_wZ_PmbDJwbE

## **Reflexão**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Z65IW3QCSOmuSFt0Aijp8w_914270a3d2e84027b46e404f7a52007f_line-y.png?expiry=1706486400000&hmac=qnceQ2wiU7NAx81Vq4N8Wcot1kftL28-5vEE-OFE3fg

Quando terminar, reflita sobre o processo de criação de sua lista de verificação e seus possíveis usos. Escreva de três a cinco frases (60-100 palavras) em resposta a cada pergunta.

- Analise sua lista de verificação e compare-a com as tarefas e atividades relacionadas a este curso. Como sua lista de verificação se assemelha ou difere da organização do curso?
- Como a criação de uma lista de verificação o ajuda a desenvolver suas habilidades de análise de dados?
- Como sua lista de verificação o ajudará a analisar seus próprios dados?
- Para o que mais você poderia usar sua lista de verificação?

Quando você terminar sua anotação no modelo de registro de aprendizagem, salve o documento para que sua resposta fique guardada em um lugar acessível. Isso ajudará você a continuar aplicando a análise de dados na vida cotidiana. Você também poderá acompanhar seu progresso e crescimento como analista de dados.

## Teste de Conhecimento sobre Validação de Dados

**Nota Recebida:** 100%

**Para ser Aprovado:** 80% ou superior

### Pergunta 1: Objetivos da Validação de Dados

- **Objetivos da Validação de Dados:**
    - Garantir que os dados sejam **consistentes**.
    - Assegurar que os dados sejam **completos e precisos**.
    - Verificar a **segurança** dos dados.
- **Explicação:** Verificar e reavaliar a qualidade dos dados durante a validação ajuda a garantir integridade, precisão, segurança e consistência.

### Pergunta 2: Verificação de Consistência de Dados

- **Situação:** Primeira data de atendimento dos pacientes é posterior à data de atendimento mais recente.
- **Tipo de Verificação:** **Consistência de dados**.
- **Explicação:** Esta é uma verificação de consistência de dados para confirmar que os dados fazem sentido no contexto de outros dados relacionados.

### Pergunta 3: Verificação de Tipo de Dados em IDs de Cliente

- **Situação:** IDs de cliente devem ter oito caracteres e ser somente numéricos.
- **Tipo de Erro Identificado:** **IDs com texto**.
- **Explicação:** Uma verificação de tipo de dados ajuda a identificar IDs de cliente que contêm texto, garantindo que sejam exclusivamente numéricos.

---

# Usando SQL com tabelas temporárias

- Tabelas temporárias

Thee WITH Clause is a type of temporary table that you can query from multiple times

```sql
WITH trips_over_1_hr AS (
	SELECT *
	FROM
		bigqquery-public-data.new_york.citibike_trips
	WHERE
		tripduration >= 60

	)

## Count how many trips are 60+ minutes long

SELECT 
	COUNT(*) AS cnt
FROM
	trips_over_1_hr

```

A instrução JOIN foi crucial para combinar dados de tabelas temporárias e principais, permitindo análises detalhadas sem alterar os dados originais, garantindo assim integridade e segurança dos dados no banco de dados

- Várias variações de tabela
    
    SELECT INTO
    
    CREATE TABLE
    

```sql
CREATE TABLE AfricaSales AS
(
SELECT *
FROM GlobalSales
WHERE Regio = "Africa"
)
```

Quais dos seguintes são métodos para criar uma versão de uma tabela temporária usando SQL? Selecione todas as opções válidas.

- [ ]  **cláusulas WHERE**
- [x]  **instruções CREATE TABLE**

Correto

As cláusulas WITH, instruções CREATE TABLE e instruções CREATE TEMP TABLE criam tabelas temporárias em consultas.

- [x]  **cláusulas WITH**

Correto

As cláusulas WITH, instruções CREATE TABLE e instruções CREATE TEMP TABLE criam tabelas temporárias em consultas.

- [x]  **instruções CREATE TEMP TABLE**

Correto

As cláusulas WITH, instruções CREATE TABLE e instruções CREATE TEMP TABLE criam tabelas temporárias em consultas.

## Trabalhando com tabelas temporárias

As **tabelas temporárias** são exatamente o que parecem – tabelas temporárias em um banco de dados SQL que não são armazenadas permanentemente. Nesta leitura, você aprenderá os métodos para criar tabelas temporárias usando comandos SQL. Você também aprenderá algumas práticas recomendadas a serem seguidas ao trabalhar com tabelas temporárias.

## **Uma rápida revisão sobre o que você já aprendeu sobre tabelas temporárias**

- Elas são excluídas automaticamente do banco de dados quando você encerra sua sessão SQL.
- Elas podem ser usadas como uma área de armazenamento para armazenar valores se você estiver fazendo uma série de cálculos. Isso às vezes é chamado de **pré-processamento** dos dados.
- Elas podem coletar os resultados de várias consultas separadas. Isso às vezes é chamado de **preparação** de dados. A preparação é útil se você precisar realizar uma consulta nos dados coletados ou mesclar os dados coletados.
- Elas podem armazenar um subconjunto filtrado do banco de dados. Você não precisa selecionar e filtrar os dados sempre que trabalhar com eles. Além disso, usar menos comandos SQL ajuda a manter seus dados limpos.

É importante ressaltar que cada banco de dados possui seu próprio conjunto exclusivo de comandos para criar e gerenciar tabelas temporárias. Estamos trabalhando com o BigQuery, então vamos nos concentrar nos comandos que funcionam bem nesse ambiente. O restante desta leitura abordará as maneiras de criar tabelas temporárias, principalmente no BigQuery.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/T82tTwpcR8qNrU8KXKfKbQ_3e11a9ce213440b082100988550ce040_Screen-Shot-2021-02-08-at-4.33.14-PM.png?expiry=1706486400000&hmac=3HV3cDYR3I-9misWMOnS_2sNkhIWC5-w0chRGVMLgR8

## **Criação de tabela temporária no BigQuery**

Tabelas temporárias podem ser criadas usando cláusulas diferentes. No BigQuery, a cláusula **WITH** pode ser usada para criar uma tabela temporária. A sintaxe geral para este método é a seguinte:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/VVOj-WzURX-To_ls1OV_fQ_dadb675ba4cd41919304a976ca21b712_Screenshot-2021-04-14-5.42.58-PM.png?expiry=1706486400000&hmac=beKjZgJhEfpngwZ4ncTecGoQbi5T3-Un0deAQV1KUis

Decompondo um pouco essa consulta, observe o seguinte:

- A instrução começa com a cláusula **WITH** seguida pelo nome da nova tabela temporária que você deseja criar
- A cláusula **AS** aparece após o nome da nova tabela. Esta cláusula instrui o banco de dados a colocar todos os dados identificados na próxima parte da instrução na nova tabela.
- O parêntese de abertura após a cláusula **AS** cria a subconsulta que filtra os dados de uma tabela existente. A subconsulta é uma instrução **SELECT** regular com uma cláusula **WHERE** para especificar os dados a serem filtrados.
- O parêntese de fechamento encerra a subconsulta criada pela cláusula **AS**.

Quando o banco de dados executa essa consulta, ele primeiro conclui a subconsulta e atribui os valores resultantes dessa subconsulta a “new_table_data”, que é a tabela temporária. Você pode executar várias consultas nesses dados filtrados sem precisar filtrar os dados todas as vezes.

## **Criação de tabelas temporárias em outros bancos de dados (não compatível com BigQuery)**

O método a seguir não é compatível com o BigQuery, mas a maioria das outras versões de bancos de dados SQL é compatível, incluindo SQL Server e mySQL. Usando **SELECT** e **INTO**, você pode criar uma tabela temporária com base nas condições definidas por uma cláusula **WHERE** para localizar as informações necessárias para a tabela temporária. A sintaxe geral para este método é a seguinte:

SELECT
*
INTO
AfricaSales
FROM
GlobalSales
WHERE
Region = "Africa"

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/IONE7D4WSFijROw-FlhY1Q_1054dc951fb345a7b447787bd8ee8fd0_Screen-Shot-2021-01-28-at-14.18.54.png?expiry=1706486400000&hmac=_hd2yVhJrNOHuXbSl6IP8gqmyTSDEMq97frbGNssiL8

Esta instrução **SELECT** usa as cláusulas padrão como **FROM** e **WHERE**, mas a cláusula **INTO** diz ao banco de dados para armazenar os dados que estão sendo solicitados em uma nova tabela temporária chamada, neste caso, “AfricaSales”.

## **Criação de tabela temporária gerenciada pelo usuário**

Até agora, exploramos maneiras de criar tabelas temporárias em que o banco de dados é responsável por gerenciar. Mas você também pode criar tabelas temporárias que você pode gerenciar como usuário. Como analista, você pode decidir criar uma tabela temporária para sua análise que você mesmo pode gerenciar. Você usaria a instrução **CREATE TABLE** para criar esse tipo de tabela temporária. Depois de terminar de trabalhar com a tabela, você a excluiria ou descartaria do banco de dados no final de sua sessão.

**Observação:** O BigQuery usa **CREATE TEMP TABLE** em vez de **CREATE TABLE**, mas a sintaxe geral é a mesma.

CREATE TABLE table_name (
          column1 datatype,
          column2 datatype,
          column3 datatype,
   ....
)

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/OGxwwFIURYuscMBSFEWLPg_c9eb87d7ddd24f7da4f32b7abaa70fdb_Screen-Shot-2021-01-28-at-14.19.22.png?expiry=1706486400000&hmac=rv_0BWTHG4Kwo85rAy8w_Y_ouCTwIDFrHCgyPIglYfw

Depois de concluir o trabalho com sua tabela temporária, você pode remover a tabela do banco de dados usando a cláusula **DROP TABLE**. A sintaxe geral é a seguinte:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/xmxxHMT8RxyscRzE_Bccvw_b691e300b86e4bbe85f59f99ba0c3fa4_Screen-Shot-2021-01-28-at-14.19.46.png?expiry=1706486400000&hmac=i7gaD6p5nCa9tvOfOxnlm6zWiIGNzi6U6YhgupCNwcY

## **Práticas recomendadas ao trabalhar com tabelas temporárias**

- **Tabelas temporárias globais versus locais:** As tabelas temporárias globais são disponibilizadas para todos os usuários do banco de dados e são excluídas quando todas as conexões que as utilizam forem fechadas. As tabelas temporárias locais são disponibilizadas apenas para o usuário cuja consulta ou conexão estabeleceu a tabela temporária. Você provavelmente trabalhará com tabelas temporárias locais. Se você criou uma tabela temporária local e é a única pessoa a usá-la, você pode descartar a tabela temporária após terminar de usá-la.
- **Descartando tabelas temporárias após o uso:** Descartar uma tabela temporária é um pouco diferente de excluir uma tabela temporária. O descarte de uma tabela temporária não apenas remove as informações contidas nas linhas da tabela, mas também remove as próprias definições de variáveis da tabela (colunas). A exclusão de uma tabela temporária remove as linhas da tabela, mas deixa a definição da tabela e as colunas prontas para serem usadas novamente. Embora as tabelas temporárias locais sejam descartadas após você encerrar sua sessão SQL, isso pode não acontecer imediatamente. Se estiver ocorrendo muito processamento no banco de dados, descartar suas tabelas temporárias após usá-las é uma boa prática para manter o banco de dados funcionando sem problemas.

## **Para mais informações**

- [Documentação do BigQuery para tabelas temporárias](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#temporary_tables): A documentação tem a sintaxe para criar tabelas temporárias no BigQuery
- [Como usar tabelas temporárias por meio de WITH no Google BigQuery](https://www.pascallandau.com/bigquery-snippets/use-temporary-tables-with-named-subquery/?utm_source=blog&utm_medium=rss&utm_campaign=development-feed)**:** O artigo descreve como usar **WITH**
- [Introdução às tabelas temporárias no SQL Server](https://codingsight.com/introduction-to-temporary-tables-in-sql-server/)**:** O artigo descreve como usar **SELECT INTO** e **CREATE TABLE**
- [Tabelas temporárias do SQL server](https://www.sqlservertutorial.net/sql-server-basics/sql-server-temporary-tables/):O artigo descreve criação de tabela temporária e remoção
- [Escolha entre variáveis de tabela e tabelas temporárias](https://www.red-gate.com/hub/product-learning/sql-prompt/choosing-table-variables-temporary-tables):O artigo descreve as diferenças entre passar variáveis em instruções SQL versus usar tabelas temporárias

## Guia Intermediário para SQL

[Guia Intermediário para SQL.docx](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/855e852d-ab3f-4dba-81ee-602d0b613c76/Guia_Intermedirio_para_SQL.docx)

## Teste seus conhecimentos sobre como usar SQL com tabelas temporárias

**Teste para praticar**

*Duração: 6 min.*

*Pontuação total disponível: 3 pontos*

**Resultado:** Parabéns! Você foi aprovado!

*Nota recebida: 100%*

*Nota para aprovação: 80% ou superior*

### Pergunta 1

**Quando as tabelas temporárias são excluídas automaticamente?**

- [ ]  Depois de concluir todos os cálculos na tabela
- [x]  Após encerrar a sessão em um banco de dados SQL
- [ ]  Depois de executar um relatório da tabela
- [ ]  Depois de executar uma consulta em seu banco de dados SQL

**Resposta correta:** As tabelas temporárias são excluídas automaticamente após o término da sessão em um banco de dados SQL.

### Pergunta 2

**A seguinte consulta SQL contém informações sobre viagens de bicicleta:**

**Quais dados aparecerão na tabela temporária criada por meio dessa consulta?**

- [ ]  Um subconjunto aleatório de viagens de bicicleta
- [ ]  O número total de viagens de bicicleta
- [x]  Viagens de bicicleta iguais ou superiores a uma hora
- [ ]  Viagens de bicicleta que duraram exatamente 60 minutos

**Resposta correta:** Esta tabela temporária mostrará viagens de bicicleta que duraram exatamente 60 minutos. O nome da tabela é "1_hr_trips" e a consulta inclui a condição de que as viagens na tabela sejam iguais a uma hora.

### Pergunta 3

**Que benefício uma instrução CREATE TABLE adiciona a uma tabela temporária?**

- [ ]  Cálculos automatizados
- [x]  Acesso para qualquer pessoa usar a tabela
- [ ]  Metadados sobre os dados na tabela
- [ ]  Convenções de nomenclatura específicas

**Resposta correta:** Uma instrução CREATE TABLE fornece acesso para qualquer pessoa usar a tabela temporária. A instrução SELECT INTO é mais adequada para uma pessoa.