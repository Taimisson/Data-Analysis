# Mais sobre integridade dos dados e conformidade

Esta leitura ilustra a importância da integridade dos dados usando um exemplo de dados de uma empresa global. As definições dos termos relevantes para a integridade dos dados serão fornecidas no final.

## Cenário: datas do calendário para uma empresa global

As datas do calendário são representadas em muitas formas curtas diferentes. Dependendo de onde você mora, um formato diferente pode ser usado.

- Em alguns países, **12/10/20** (DD/MM/AA) significa 12 de outubro de 2020.
- Em outros países, o padrão nacional é YYYY-MM-DD, então 12 de outubro de 2020 se torna **2020-10-12**.
- Nos Estados Unidos, (MM/DD/AA) é o formato aceito, então 12 de outubro de 2020 será **12/10/20**.

Agora, pense no que aconteceria se você estivesse trabalhando como analista de dados para uma empresa global e não verificasse os formatos de data. Bem, sua integridade de dados provavelmente seria questionável. Qualquer análise dos dados seria imprecisa. Imagine encomendar estoque extra para dezembro, quando na verdade era necessário em outubro!

Uma boa análise depende da integridade dos dados, e a integridade dos dados geralmente depende do uso de um formato comum. Portanto, é importante verificar novamente como as datas são formatadas para garantir que o que você acha que é 10 de dezembro de 2020 não seja realmente 12 de outubro de 2020 e vice-versa.

Aqui estão algumas outras coisas a serem observadas:

- **Replicação de dados comprometendo a integridade dos dados:** Continuar com o exemplo, imagine que você peça aos seus colegas internacionais para verificar as datas e manter um formato. Um analista copia um grande conjunto de dados para verificar as datas. Mas por causa de problemas de memória, apenas parte do conjunto de dados é realmente copiado. O analista estaria verificando e padronizando dados incompletos. Esse conjunto de dados parcial seria certificado como compatível, mas o conjunto de dados completo ainda conteria datas que não foram verificadas. Duas versões de um conjunto de dados podem apresentar resultados inconsistentes. Uma auditoria final dos resultados seria essencial para revelar o que aconteceu e corrigir todas as datas.
- **Transferência de dados comprometendo a integridade dos dados:** Outro analista verifica as datas em uma planilha e opta por importar os dados validados e padronizados de volta para o banco de dados. Mas suponha que o campo de data da planilha foi classificado incorretamente como um campo de texto durante o processo de importação (transferência) de dados. Agora, algumas das datas no banco de dados são armazenadas como sequências de texto. Neste ponto, os dados precisam ser limpos para restaurar sua integridade.
- **Manipulação de dados comprometendo a integridade dos dados:** Ao verificar as datas, outro analista percebe o que parece ser um registro duplicado no banco de dados e o remove. Mas acontece que o analista removeu um registro exclusivo da subsidiária de uma empresa e não um registro duplicado da empresa. Seu conjunto de dados agora está com dados ausentes e os dados devem ser restaurados para que estejam completos.

## Conclusão

Felizmente, com um formato de data padrão e conformidade de todas as pessoas e sistemas que trabalham com os dados, a integridade dos dados pode ser mantida. Mas não importa de onde vêm seus dados, certifique-se sempre de verificar se eles são válidos, completos e limpos antes de iniciar qualquer análise.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/MxSHaCOGS12Uh2gjhjtdBQ_067803a06f4243f48af071a66805ff3f_Screen-Shot-2021-01-25-at-12.03.17-PM.png?expiry=1705536000000&hmac=GE9CRvLrF-4IO4pnK5c1QvWSR8Sv6SfZekV0a5rXHuU

## Referência: Restrições de dados e exemplos

Conforme você progride em sua jornada de dados, você encontrará muitos tipos de restrições de dados (ou critérios que determinam a validade). A tabela abaixo oferece definições e exemplos de termos de restrição de dados que você pode encontrar.

| Restrição de dados | Definição | Exemplos |
| --- | --- | --- |
| Tipo de dado | Os valores devem ser de um determinado tipo: data, número, porcentagem, booleano, etc. | Se o tipo de dados for uma data, um único número como 30 falharia na restrição e seria inválido. |
| Intervalo de dados | Os valores devem estar entre os valores máximo e mínimo predefinidos | Se o intervalo de dados for de 10 a 20, um valor de 30 falharia na restrição e seria inválido. |
| Obrigatório | Os valores não podem ser deixados em branco ou vazios | Se a idade for obrigatória, esse valor deve ser preenchido. |
| Único | Os valores não podem ter um duplicado | Duas pessoas não podem ter o mesmo número de celular na mesma área de serviço. |
| Padrões de expressão regular (regex) | Os valores devem corresponder a um padrão prescrito | Um número de telefone deve corresponder a ###-###-#### (nenhum outro caractere é permitido). |
| Validação de campo cruzado | Certas condições para vários campos devem ser atendidas | Os valores são porcentagens e os valores de vários campos devem somar 100%. |
| Chave primária | (Somente bancos de dados) o valor deve ser exclusivo por coluna | Uma tabela de banco de dados não pode ter duas linhas com o mesmo valor de chave primária. Uma chave primária é um identificador em um banco de dados que faz referência a uma coluna na qual cada valor é exclusivo. Mais informações sobre chaves primárias e estrangeiras são fornecidas posteriormente no programa. |
| Conjunto de membros | (Somente bancos de dados) os valores de uma coluna devem vir de um conjunto de valores discretos | O valor de uma coluna deve ser definido como Sim, Não ou Não aplicável. |
| Chave estrangeira | (Somente bancos de dados) os valores de uma coluna devem ser valores exclusivos provenientes de uma coluna em outra tabela | Em um banco de dados de contribuintes dos EUA, a coluna Estado deve ser um estado ou território válido com o conjunto de valores aceitáveis definidos em uma tabela de estados separada. |
| Precisão | O grau em que os dados estão de acordo com a entidade real que está sendo medida ou descrita | Se os valores dos códigos postais forem validados pela localização da rua, a precisão dos dados aumenta. |
| Integridade | O grau em que os dados contêm todos os componentes ou medidas desejados | Se os dados de perfis pessoais exigirem a cor do cabelo e dos olhos, e ambos forem coletados, os dados estarão completos. |
| Consistência | O grau em que os dados são repetíveis de diferentes pontos de entrada ou coleta | Se um cliente tiver o mesmo endereço nos bancos de dados de vendas e reparos, os dados serão consistentes. |

---

# Dados e objetivos bem alinhados

Você pode obter insights poderosos e tirar conclusões precisas quando os dados estão bem alinhados aos objetivos de negócios. Como analista de dados, o alinhamento é algo que você precisará julgar. Um bom alinhamento significa que os dados são relevantes e podem ajudá-lo a resolver um problema de negócios ou determinar um curso de ação para atingir um determinado objetivo de negócios.

Nesta leitura, você revisará os objetivos de negócios associados a três cenários. Você explorará como dados limpos e objetivos de negócios bem alinhados podem ajudá-lo a chegar a conclusões precisas. Além disso, você aprenderá como novas variáveis descobertas durante a análise de dados podem fazer com que você configure restrições de dados para manter os dados alinhados a um objetivo de negócios.

## Dados limpos + alinhamento ao objetivo de negócios = conclusões precisas

### Objetivo de negócios

Os gerentes de contas do Impress Me, um serviço de assinatura de conteúdo online, querem saber quando os usuários visualizam o conteúdo depois que suas assinaturas são ativadas.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/uGU6wRn8SXClOsEZ_NlwUQ_1f46ab637fc641acafae6f862c23fc46_Screen-Shot-2021-01-25-at-12.38.21-PM.png?expiry=1705536000000&hmac=t70PoB86PkIgzC-NlJ4VODtB-tQHhxdF4Rb0ymwc9BU

Para começar, o analista de dados verifica se os dados exportados para planilhas estão limpos e confirma se os dados necessários (quando os usuários acessam o conteúdo) estão disponíveis. Sabendo disso, o analista decide que há um bom alinhamento dos dados com o objetivo do negócio. Tudo o que falta é descobrir exatamente quanto tempo cada usuário leva para visualizar o conteúdo após a ativação da assinatura.

Aqui estão as etapas de processamento de dados que o analista executa para um usuário de uma conta chamada V&L Consulting. (Essas etapas seriam repetidas para cada conta assinante e para cada usuário associado a essa conta.)

### Etapa 1

| Etapa de processamento de dados | Fonte de dados |
| --- | --- |
| Procure a data de ativação da V&L Consulting | Planilha da conta |

**Dados relevantes na planilha:**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/GnNRQZl4QkSzUUGZeBJEzg_90d6857f15ac4d24ae9df6e5c5b4e0fa_Screen-Shot-2021-01-18-at-6.29.11-PM.png?expiry=1705536000000&hmac=CE2v2bVxWWHt1OqEh4PSyhRbIUDjNILirCnAGTmWqHU

**Resultado:** 21 de outubro de 2019

### Etapa 2

| Etapa de processamento de dados | Fonte de dados |
| --- | --- |
| Procure o nome de um usuário pertencente à conta da V&L Consulting | Planilha da conta (guia de usuários) |

**Dados relevantes na planilha**:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/R-nkA9w1Riep5APcNSYnRA_7480900c4f204ffb9421199fd8bf32c8_Screen-Shot-2021-01-18-at-6.27.24-PM.png?expiry=1705536000000&hmac=ZwCg62whO-NFlfq4Uid7o79EcBHqMrxqeFY6b6irj7U

**Resultado:** Maria Ballantyne

### Etapa 3

| Etapa de processamento de dados | Fonte de dados |
| --- | --- |
| Encontre a primeira data de acesso ao conteúdo de Maria B. | Planilha de uso de conteúdo |

**Dados relevantes na planilha:**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/_Mn53wNpR0aJ-d8DaedG4w_ecc7521519ea4b4c810dd80bc0f54b9d_Screen-Shot-2021-01-18-at-6.35.48-PM.png?expiry=1705536000000&hmac=u6fcZmu9U2gNuxkV2-a-F8BuEAzi-z4DxLRYwj-SIyA

**Resultado:** 31 de outubro de 2019

### Etapa 4

| Etapa de processamento de dados | Fonte de dados |
| --- | --- |
| Calcule o tempo entre a ativação e o primeiro uso de conteúdo para Maria B. | Cálculo da nova planilha |

**Dados relevantes na planilha**:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/jV8hcatCTq2fIXGrQr6ttw_b4f3452496b543bd9e46716485d5175e_Screen-Shot-2021-01-18-at-6.41.56-PM.png?expiry=1705536000000&hmac=wNmpklnRt-_j_sNwhNG4R-MYNVPFDi3JCFTNTJ9msSA

**Resultado:** 10 dias

### Dica profissional 1

No processo acima, o analista pode usar **VLOOKUP** para pesquisar os dados nas Etapas 1, 2 e 3 para preencher os valores na planilha na Etapa 4. [VLOOKUP](https://support.microsoft.com/en-us/office/vlookup-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1) é uma função de planilha que procura um determinado valor em uma coluna para retornar uma informação relacionada. Usar VLOOKUP pode economizar muito tempo; sem ele, você precisa procurar datas e nomes manualmente.

Consulte a página [VLOOKUP](https://support.google.com/docs/answer/3093318?hl=en) na Central de Ajuda do Google para saber como usar a função no Planilhas Google.

### Dica profissional 2

Na Etapa 4 do processo acima, o analista pode usar a função **DATEDIF** para calcular automaticamente a diferença entre as datas na coluna C e na coluna D. A função pode calcular o número de dias entre duas datas.

Consulte a página do Microsoft Support [DATEDIF](https://support.microsoft.com/en-us/office/datedif-function-25dba1a4-2812-480b-84dd-8b32a451b35c) para saber como usar a função no Excel. A função [DAYS360](https://support.microsoft.com/en-us/office/days360-function-b9a509fd-49ef-407e-94df-0cbda5718c2a) faz a mesma coisa em planilhas contábeis que usam um ano de 360 dias (doze meses de 30 dias).

Consulte a página [DATEDIF](https://support.google.com/docs/answer/6055612?hl=en) na Central de Ajuda do Google para saber como usar a função no Planilhas Google.

## Alinhamento ao objetivo de negócios + limpeza de dados adicional = conclusões precisas

### Objetivo de negócios

A Cloud Gate, uma empresa de software, organizou recentemente uma série de webinars públicos como apresentações gratuitas de produtos. O analista de dados e o gerente de programa de webinar desejam identificar empresas que tiveram cinco ou mais pessoas participando dessas sessões. Eles querem dar essa lista de empresas aos gerentes de vendas que podem acompanhar as vendas em potencial.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/kfJtDm53S4iybQ5ud9uIaQ_c2812e7377fe4f48bc044561996b3d92_Screen-Shot-2021-01-25-at-12.46.54-PM.png?expiry=1705536000000&hmac=W6AdESpWdAVYh4o2xHwWcrV-629Z1g2i6rVkkazEDu8

Os dados de participação no webinar incluem os campos e dados mostrados abaixo.

| Nome | <Nome> <Sobrenome> | Esta era a informação necessária que os participantes tinham que enviar |
| --- | --- | --- |
| Endereços de e-mail | xxxxx@company.com | Esta era a informação necessária que os participantes tinham que enviar |
| Empresa | <Nome da empresa> | Esta era uma informação opcional que os participantes poderiam fornecer |

### Limpeza de dados

Os dados de participação no webinar parecem estar alinhados com o objetivo de negócios. Mas o analista de dados e o gerente de programa decidem que alguma limpeza de dados é necessária antes da análise. Eles acham que a limpeza de dados é necessária porque:

- O nome da empresa não era um campo obrigatório. Se o nome da empresa estiver em branco, pode ser encontrado no endereço de e-mail. Por exemplo, se o endereço de e-mail for username@google.com, o campo da empresa pode ser preenchido com o Google para a análise dos dados. Essa etapa de limpeza de dados pressupõe que as pessoas com endereços de e-mail atribuídos à empresa participaram de um webinar para fins comerciais.
- Os participantes podiam digitar qualquer nome. Como a participação em uma série de webinars está sendo analisada, eles precisam validar nomes em relação a endereços de e-mail exclusivos. Por exemplo, se Joe Cox participasse de dois webinars, mas assinasse como Joe Cox para um e Joseph Cox para o outro, ele seria contado como duas pessoas diferentes. Para evitar isso, eles precisam verificar o endereço de e-mail exclusivo dele para determinar que ele era a mesma pessoa. Após a validação, Joseph Cox pode ser alterado para Joe Cox para corresponder à outra instância.

## Alinhamento ao objetivo de negócios + variáveis recém-descobertas + restrições = conclusões precisas

### Objetivo de negócios

Uma empresa de tutoria extra curricular, A+ Education, quer saber se há um número mínimo de horas de tutoria necessárias antes que os alunos tenham pelo menos 10% de melhoria em suas notas de avaliação.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/XIgx4gCvR5-IMeIAr2efDA_a28452c4b7874cd68547049e163f0c2b_Screen-Shot-2021-01-25-at-12.52.43-PM.png?expiry=1705536000000&hmac=2K1BXzivhZKY8SGB5bqytSseT2DqpbANDNdHGtctmyI

O analista de dados acredita que há um bom alinhamento entre os dados disponíveis e o objetivo dos negócios porque:

- Os alunos entram e saem de um sistema para cada sessão de tutoria e o número de horas é rastreado
- As pontuações da avaliação são registradas regularmente

### Restrições de dados para novas variáveis

Depois de analisar os dados, o analista de dados descobre que existem outras variáveis a serem consideradas. Alguns alunos tiveram sessões semanais consistentes, enquanto outros alunos agendaram sessões de forma mais aleatória, embora o número total de horas de tutoria fosse o mesmo. Os dados não se alinham tão bem com o objetivo de negócios original como se pensava inicialmente, então o analista adiciona uma restrição de dados para se concentrar apenas nos alunos com sessões semanais consistentes. Essa modificação ajuda a obter uma imagem mais precisa sobre o tempo de inscrição necessário para obter uma melhoria de 10% nas pontuações da avaliação.

## Principais conclusões

Esperamos que esses exemplos lhe deem uma noção do que procurar para saber se seus dados estão alinhados com seu objetivo de negócios.

- Quando há dados limpos e um bom alinhamento, você pode obter insights precisos e tirar conclusões que os dados suportam.
- Se houver um bom alinhamento, mas os dados precisarem ser limpos, limpe os dados antes de realizar sua análise.
- Se os dados estiverem apenas parcialmente alinhados com um objetivo, pense em como você pode modificar o objetivo ou use restrições de dados para garantir que o subconjunto de dados se alinhe melhor ao objetivo de negócios.

# **Teste seu conhecimento sobre a integridade dos dados e objetivos analíticos**

## Parabéns! Você foi aprovado!

Nota recebida 100%

Para ser aprovado 80% ou superior

Ir para o próximo item

**1.**Pergunta 1

Quais dos seguintes princípios são os principais elementos da integridade dos dados? Selecione todas as opções válidas.

1 / 1 ponto

- [x]  **Precisão**

Correto

A integridade dos dados é a precisão, integridade, consistência e confiabilidade dos dados ao longo de seu ciclo de vida.

- [ ]  **Seletividade**
- [x]  **Consistência**

Correto

A integridade dos dados é a precisão, integridade, consistência e confiabilidade dos dados ao longo de seu ciclo de vida.

- [x]  **Confiabilidade**

Correto

A integridade dos dados é a precisão, integridade, consistência e confiabilidade dos dados ao longo de seu ciclo de vida.

**2.**Pergunta 2

Qual processo os analistas de dados usam para tornar os dados mais organizados e fáceis de ler?

1 / 1 ponto

**Manipulação de dados**

**Uniformidade de dados**

**Replicação de dados**

**Transferência de dados**

Correto

Para tornar os dados mais organizados e fáceis de ler, os analistas de dados usam a manipulação de dados.

**3.**Pergunta 3

Antes da análise, uma empresa coleta dados de países que usam diferentes formatos de data. Qual das seguintes atualizações melhoraria a integridade dos dados?

1 / 1 ponto

**Alterar todas as datas para o mesmo formato**

**Organizar os dados por país**

**Remover dados em um formato de data desconhecido**

**Deixe as datas em seus formatos atuais**

Correto

Alterar todas as datas para o mesmo formato melhoraria a integridade dos dados.

---

# O que fazer ao encontrar um problema com os dados

Quando você está se preparando para a análise de dados, pode perceber que não tem os dados de que precisa ou não tem o suficiente. Em alguns casos, você pode usar o que é conhecido como dados de proxy no lugar dos dados reais. Pense nisso como substituir óleo por manteiga em uma receita quando você não tem manteiga. Em outros casos, não há substituto razoável e sua única opção é coletar mais dados.

Considere os seguintes problemas de dados e sugestões sobre como contorná-los.

## Problema de dados 1: falta de dados

| Soluções possíveis, | Exemplos de soluções na vida real |
| --- | --- |
| Colete os dados em pequena escala para realizar uma análise preliminar e, em seguida, solicite mais tempo para concluir a análise depois de coletar mais dados. | Se você estiver pesquisando funcionários sobre o que eles pensam sobre um novo plano de desempenho e bônus, use uma amostra para uma análise preliminar. Em seguida, peça mais 3 semanas para coletar os dados de todos os funcionários. |
| Se não houver tempo para coletar dados, realize a análise usando dados de proxy de outros conjuntos de dados.  Esta é a solução mais comum. | Se você estiver analisando os horários de pico de viagens para usuários de transporte público, mas não tiver os dados de uma cidade específica, use os dados de outra cidade com tamanho e demografia semelhantes. |

## Problema de dados 2: muito poucos dados

| Soluções possíveis, | Exemplos de soluções na vida real |
| --- | --- |
| Faça a análise usando dados de proxy junto com dados reais. | Se você estiver analisando tendências para donos de golden retrievers, aumente seu conjunto de dados incluindo os dados de donos de labradores. |
| Ajuste sua análise para alinhar com os dados que você já possui. | Se faltarem dados para jovens de 18 a 24 anos, faça a análise, mas observe a seguinte limitação em seu relatório: esta conclusão se aplica apenas a adultos com 25 anos ou mais. |

## Problema de dados 3: dados errados, incluindo dados com erros*

| Soluções possíveis, | Exemplos de soluções na vida real |
| --- | --- |
| Se você tiver os dados errados porque os requisitos foram mal compreendidos, comunique os requisitos novamente. | Se você precisa dos dados de eleitores do sexo feminino e recebeu os dados de eleitores do sexo masculino, reafirme suas necessidades. |
| Identifique erros nos dados e, se possível, corrija-os na origem, procurando um padrão nos erros. | Se seus dados estiverem em uma planilha e houver uma declaração condicional ou booleana fazendo com que os cálculos estejam errados, altere a declaração condicional em vez de apenas corrigir os valores calculados. |
| Se você não puder corrigir os erros de dados sozinho, poderá ignorar os dados errados e prosseguir com a análise se o tamanho da amostra ainda for grande o suficiente e ignorar os dados não causará viés sistemático. | Se seu conjunto de dados foi traduzido de um idioma diferente e algumas das traduções não fazem sentido, ignore os dados com tradução ruim e prossiga com a análise dos outros dados. |
- ** Observação importante: às vezes, dados com erros podem ser um sinal de alerta de que os dados não são confiáveis. Use seu melhor julgamento.*

### Use a seguinte árvore de decisão como um lembrete sobre como lidar com erros de dados ou dados insuficientes:

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/lf6RjY2YRXm-kY2NmCV5vQ_226be8e160a6423cb9a54767814e52f1_Screen-Shot-2022-06-15-at-14.04.41.png?expiry=1705536000000&hmac=5XAnw4n1HXf8WbvAlMBcSyD4jymTChPWKGcQNlruO8g

---

# Como calcular o tamanho da amostra

Antes de se aprofundar no tamanho da amostra, familiarize-se com estes termos e definições:

| Terminologia | Definições |
| --- | --- |
| População | Todo o grupo em que você está interessado para o seu estudo. Por exemplo, se você estiver pesquisando pessoas em sua empresa, a população seria todos os funcionários de sua empresa. |
| Amostra | Um subconjunto de sua população. Assim como uma amostra de comida, é chamada de amostra porque é apenas um gosto. Portanto, se sua empresa for grande demais para pesquisar todos os indivíduos, você poderá pesquisar uma amostra representativa de sua população. |
| Margem de erro | Como uma amostra é usada para representar uma população, é esperado que os resultados da amostra sejam diferentes do que teria sido se você tivesse pesquisado toda a população. Essa diferença é chamada de margem de erro. Quanto menor a margem de erro, mais próximos os resultados da amostra estarão do resultado se você tivesse pesquisado toda a população. |
| Nível de confiança | Quão confiante você se sente nos resultados da pesquisa. Por exemplo, um nível de confiança de 95% significa que se você executar a mesma pesquisa 100 vezes, obterá resultados semelhantes 95 dessas 100 vezes. O nível de confiança é direcionado antes de você iniciar seu estudo porque afetará o tamanho da sua margem de erro no final do seu estudo. |
| Intervalo de confiança | O intervalo de valores possíveis que o resultado da população estaria no nível de confiança do estudo. Este intervalo é o resultado da amostra +/- a margem de erro. |
| Significância estatística | A determinação de se o seu resultado pode ser devido ao acaso ou não. Quanto maior o significado, menos devido ao acaso. |

## Coisas para lembrar ao determinar o tamanho da sua amostra

Ao descobrir um tamanho da amostra, aqui estão algumas coisas a serem lembradas:

- Não use um tamanho da amostra menor que 30. Está estatisticamente comprovado que 30 é o menor tamanho da amostra onde um resultado médio de uma amostra passa a representar o resultado médio de uma população.
- O nível de confiança mais usado é 95%, mas 90% pode funcionar em alguns casos.

Aumente o tamanho da amostra para atender às necessidades específicas do seu projeto:

- Para um nível de confiança **mais alto**, use um tamanho da amostra maior
- Para **diminuir** a margem de erro, use um tamanho da amostra maior
- Para **maior** significância estatística, use um tamanho da amostra maior

**Observação:** As calculadoras de tamanho da amostra usam fórmulas estatísticas para determinar um tamanho da amostra. Mais informações sobre isso surgirão no decorrer do curso! Então, prepare-se.

### Por que uma amostra mínima de 30?

Esta recomendação é baseada no **Teorema do Limite Central (CLT)** no campo da probabilidade e estatística. Conforme o tamanho da amostra aumenta, os resultados se assemelham mais à distribuição normal (em forma de sino) de um grande número de amostras. Uma amostra de 30 é o menor tamanho da amostra para o qual o CLT ainda é válido. Pesquisadores que confiam em **análise de regressão** – métodos estatísticos para determinar as relações entre variáveis controladas e dependentes – também preferem uma amostra mínima de 30.

Ainda curioso? Sem entrar muito em matemática, confira estes artigos:

- Teorema do Limite Central (CLT) Este artigo da Investopedia explica o Teorema do Limite Central e descreve brevemente como ele pode ser aplicado a uma análise de um índice de ações.
- [Fórmula do tamanho da amostra:](https://www.statisticssolutions.com/dissertation-resources/sample-size-calculation-and-sample-size-justification/sample-size-formula/) Este artigo da Statistics Solutions fornece um pouco mais de detalhes sobre por que alguns pesquisadores usam 30 como tamanho da amostra mínimo.

## Os tamanhos das amostras variam de acordo com o problema de negócios

O tamanho da amostra varia de acordo com o tipo de problema de negócios que você está tentando resolver.

Por exemplo, se você mora em uma cidade com uma população de 200 mil habitantes e recebe 180 mil pessoas para responder a uma pesquisa, essa é uma amostra grande. Mas sem realmente fazer isso, como seria um tamanho da amostra aceitável e menor?

Os 200 habitantes seria bom se as pessoas pesquisadas representassem todos os distritos da cidade?

**Resposta**: Depende do que está em jogo.

- Um tamanho da amostra de 200 pode ser grande o suficiente se o seu problema de negócios for descobrir como os moradores se sentiram em relação à nova biblioteca
- Um tamanho da amostra de 200 pode não ser grande o suficiente se o seu problema comercial for determinar como os moradores votariam para financiar a biblioteca

Você provavelmente poderia aceitar uma margem de erro maior pesquisando como os moradores se sentem sobre a nova biblioteca versus pesquisando os moradores sobre como eles votariam para financiá-la. Por esse motivo, você provavelmente usaria um tamanho da amostra maior para a pesquisa de eleitores.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/koe1D0gdTe-HtQ9IHc3v5w_53d654b1c8a54cc6a06fefceea859509_Screen-Shot-2021-01-25-at-1.10.03-PM.png?expiry=1705536000000&hmac=Z5D08Wf-lfyoUglflrpIg4_Ow0D-yoTX31qllsH3jSM

## Tamanhos de amostra maiores têm um custo mais alto

Você também deve pesar o custo em relação aos benefícios de resultados mais precisos com um tamanho da amostra maior. Alguém que está tentando entender as preferências do consumidor por uma nova linha de produtos não precisaria de um tamanho da amostra tão grande quanto alguém que está tentando entender os efeitos de um novo medicamento. Para a segurança dos medicamentos, os benefícios superam o custo de usar um tamanho da amostra maior. Mas para as preferências do consumidor, um tamanho da amostra menor a um custo menor pode fornecer resultados bons o suficiente.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/37e3kQnbQA63t5EJ21AOUA_abd26b52acfb49f796bb8ba21783cea1_Screen-Shot-2021-01-25-at-1.08.09-PM.png?expiry=1705536000000&hmac=UxUp8MrynaKtoG_RrDeC-dfIPLhWMICX85xFThpSf_o

## Conhecer o básico é útil

Conhecer o básico ajudará você a fazer as escolhas certas quando se trata do tamanho da amostra. Você sempre pode apresentar preocupações se encontrar um tamanho da amostra muito pequeno. Uma calculadora de tamanho da amostra também é uma ótima ferramenta para isso. As calculadoras de tamanho da amostra permitem que você insira um nível de confiança e margem de erro desejados para um determinado tamanho de população. Eles então calculam o tamanho da amostra necessário para alcançar estatisticamente esses resultados.

Consulte o vídeo [Determine o melhor tamanho da amostra](https://www.coursera.org/learn/processar-os-dados-para-limpa-los/lecture/mSj5A/como-determinar-o-melhor-tamanho-da-amostra) para obter uma demonstração de uma calculadora de tamanho da amostra ou consulte a leitura da [Calculadora de Tamanho da Amostra](https://www.coursera.org/learn/processar-os-dados-para-limpa-los/supplement/ZqcDw/calculadora-de-tamanho-da-amostra) para obter informações adicionais.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/R4RY1zbET-OEWNc2xI_jrA_dacca9cef1ea4417ad9ffdff1e7ca869_Screen-Shot-2021-01-25-at-1.13.19-PM.png?expiry=1705536000000&hmac=JvfEP94Iq-XUS11vvoJ2v5vjCdmM_kJN2cAKt_mS7k4

---

# O que fazer quando não há dados

Anteriormente, você aprendeu como ainda pode fazer uma análise usando dados de proxy se não tiver dados. Você pode ter algumas dúvidas sobre dados de proxy, portanto, esta leitura fornecerá mais alguns exemplos dos tipos de conjuntos de dados que podem servir como fontes de dados alternativas.

## Exemplos de dados de proxy

Às vezes, os dados para apoiar um objetivo de negócios não estão prontamente disponíveis. É quando os dados de proxy são úteis. Dê uma olhada nos seguintes cenários e onde os dados de proxy entram para cada exemplo:

| Cenário de negócios | Como os dados de proxy podem ser usados |
| --- | --- |
| Um novo modelo de carro foi lançado há alguns dias e a concessionária mal pode esperar até o final do mês para que os dados de vendas cheguem. Eles querem projeções de vendas agora. | O analista aproxima o número de cliques nas especificações do carro no site da concessionária como uma estimativa de vendas potenciais na concessionária. |
| Um novo produto de carne à base de plantas foi recentemente estocado em mercearias e o fornecedor precisa estimar a demanda nos próximos quatro anos. | O analista procura os dados de vendas de um substituto de peru feito de tofu que está no mercado há vários anos. |
| A Câmara de Comércio quer saber como uma campanha de turismo afetará as viagens para sua cidade, mas os resultados da campanha ainda não estão disponíveis publicamente. | O analista procura os dados históricos de reservas aéreas para a cidade um a três meses depois que uma campanha semelhante foi realizada seis meses antes. |

## Conjuntos de dados públicos examinados

Se você faz parte de uma grande organização, pode ter acesso a muitas fontes de dados. Mas se você estiver procurando por algo específico ou um pouco fora de sua linha de negócios, também poderá usar conjuntos de dados abertos ou públicos. (Você pode consultar este artigo da [Towards Data Science](https://towardsdatascience.com/is-there-a-difference-between-open-data-and-public-data-6261cd7b5389) para uma breve explicação da diferença entre dados abertos e públicos.)

Aqui está um exemplo. Uma versão nasal de uma vacina foi recentemente disponibilizada. Uma clínica quer saber o que esperar das contraindicações, mas acabou de começar a coletar dados primários de seus pacientes. Uma **contraindicação** é uma condição que pode fazer com que um paciente não tome uma vacina devido aos danos que ela causaria se fosse tomada. Para estimar o número de possíveis contraindicações, um analista de dados aproxima um conjunto de dados aberto de um teste da versão de injeção da vacina. O analista seleciona um subconjunto de dados com perfis de pacientes que mais se aproximam da composição dos pacientes na clínica.

Há muitas maneiras de compartilhar e colaborar em dados dentro de uma comunidade. A Kaggle ([kaggle.com](https://www.kaggle.com/)), que apresentamos anteriormente, possui conjuntos de dados em vários formatos, incluindo o tipo mais básico, arquivos com valores separados por vírgula (CSV).

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/oJRBo8f_QFaUQaPH__BWAg_969ab40fa7a241f39b00e7c3e2e69cc9_Screen-Shot-2021-01-25-at-1.27.09-PM.png?expiry=1705536000000&hmac=8-nO3nKcwJNruzqk4Bt1AfQ4NviLtf8rvrXUsQFt3gs

### CSV, JConjuntos de dados SON, SQLite e BigQuery

- CSV: Confira este conjunto de dados de [clientes de cartão de crédito](https://www.kaggle.com/sakshigoyal7/credit-card-customers), que tem informações de 10.000 clientes, incluindo idade, salário, estado civil, limite do cartão de crédito, categoria do cartão de crédito etc. (CC0: Domínio Público, Sakshi Goyal).
- JSON: Confira este conjunto de dados do JSON para [vídeos de tendências do YouTube](https://www.kaggle.com/datasnaek/youtube-new) (CC0: Domínio Público, Mitchell J).
- SQLite: Confira este conjunto de dados da SQLite para 24 anos de [dados de incêndios florestais nos EUA](https://www.kaggle.com/rtatman/188-million-us-wildfires) (CC0: Domínio Público, Rachael Tatman).
- BigQuery: Confira este conjunto de dados de amostra do [Google Analytics 360](https://www.kaggle.com/bigquery/google-analytics-sample) da Google Merchandise Store (CC0 Public Domain, Google BigQuery).

Consulte a [documentação para conjuntos](https://www.kaggle.com/docs/datasets) do Kaggle de dados para obter mais informações e pesquise e explore conjuntos de dados por conta própria em [kaggle.com/datasets](https://www.kaggle.com/datasets).

Tal como acontece com todos os outros tipos de conjuntos de dados, fique atento a dados duplicados e 'Nulo' em conjuntos de dados abertos. Nulo na maioria das vezes significa que um campo de dados não foi atribuído (deixado em branco), mas às vezes Nulo pode ser interpretado como o valor 0. É importante entender como o Nulo foi usado antes de começar a analisar um conjunto de dados com dados Nulo.

---

# Calculadora de tamanho da amostra

Nesta leitura, você aprenderá o básico sobre calculadoras de tamanho da amostra, como usá-las e como entender os resultados. Uma **calculadora de tamanho da amostra** informa quantas pessoas você precisa entrevistar (ou coisas que você precisa testar) para obter resultados que representem a população-alvo. Vamos revisar alguns termos que você encontrará ao usar uma calculadora de tamanho da amostra:

- **Nível de confiança:** a probabilidade de que o tamanho da amostra reflita com precisão a população maior.
- **Margem de erro:** a quantidade máxima que se espera que os resultados da amostra sejam diferentes dos da população real.
- **População**: este é o número total do qual você espera extrair sua amostra.
- **Amostra**: uma parte de uma população que é representativa da população.
- **Taxa de resposta estimada:** se você estiver realizando uma pesquisa com indivíduos, essa é a porcentagem de pessoas que você espera que preencham sua pesquisa entre aquelas que receberam a pesquisa.

## Como usar uma calculadora de tamanho da amostra

Para usar uma calculadora de tamanho da amostra, você precisa ter o tamanho da população, o nível de confiança e a margem de erro aceitável já decididos para que você possa inseri-los na ferramenta. Se essas informações estiverem prontas, confira estas calculadoras de tamanho da amostra abaixo:

- [Calculadora de tamanho da amostra em surveymonkey.com](https://www.surveymonkey.com/mp/sample-size-calculator/)
- [Calculadora de tamanho da amostra em raosoft.com](http://www.raosoft.com/samplesize.html)

## O que fazer com os resultados

Depois de inserir suas informações em uma dessas calculadoras, ela fornecerá um tamanho da amostra recomendado. Lembre-se que o tamanho da amostra calculado é o número **mínimo** para atingir o que você inseriu para nível de confiança e margem de erro. Se você estiver trabalhando com uma pesquisa, também precisará pensar na taxa de resposta estimada para descobrir quantas pesquisas precisará enviar. Por exemplo, se você precisar de um tamanho da amostra de 100 indivíduos e sua taxa de resposta estimada for de 10%, será necessário enviar sua pesquisa para 1.000 indivíduos para obter as 100 respostas necessárias para sua análise.

Agora que você tem o básico, tente alguns cálculos usando as calculadoras de tamanho da amostra e consulte esta leitura se precisar de uma atualização sobre as definições.

# Teste seu conhecimento sobre como testar seus dados

## Parabéns! Você foi aprovado!

Nota recebida 100%

Para ser aprovado 80% ou superior

Ir para o próximo item

**1.**Pergunta 1

Uma equipe de pesquisa realiza um experimento para determinar se um novo sistema de segurança é mais eficaz do que a versão anterior. Que tipo de resultados são necessários para que o experimento seja estatisticamente significativo?

1 / 1 ponto

**Resultados que são reais e não causados por acaso**

**Resultados que dificilmente ocorrerão novamente**

**Resultados que são hipotéticos e precisam de mais testes**

**Resultados que são imprecisos e devem ser ignorados**

Correto

Para que um experimento seja estatisticamente significativo, os resultados devem ser reais e não causados por acaso.

**2.**Pergunta 2

Para ter um alto nível de confiança em uma pesquisa com clientes, o que o tamanho da amostra deve refletir com precisão?

1 / 1 ponto

**Toda a população**

**As tendências de outras pesquisas com clientes**

**Os membros mais valiosos da população**

**As previsões das partes interessadas**

Correto

Para ter um alto nível de confiança em uma pesquisa com clientes, o tamanho da amostra deve refletir com precisão toda a população.

**3.**Pergunta 3

Um analista de dados determina um tamanho de amostra apropriado para uma pesquisa. Eles podem verificar seu trabalho certificando-se de que a porcentagem do nível de confiança mais a porcentagem da margem de erro somam 100%.

1 / 1 ponto

**Verdadeiro**

**Falso**

Correto

A porcentagem do nível de confiança e a porcentagem da margem de erro não precisam somar 100%. Eles são independentes um do outro.

---

# Tudo sobre a margem de erro

**Margem de erro** é a quantidade máxima que se espera que os resultados da amostra sejam diferentes dos da população real. Mais tecnicamente, a margem de erro define um intervalo de valores abaixo e acima do resultado médio da amostra. Espera-se que o resultado médio para toda a população esteja dentro desse intervalo. Podemos entender melhor a margem de erro usando alguns exemplos abaixo.

## Margem de erro no beisebol

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/eBY3N-ZbSruWNzfmW3q7Eg_106e5f1b1d184d87890158ba1221f9e4_Screen-Shot-2021-01-25-at-1.31.14-PM.png?expiry=1705536000000&hmac=bqiSQRjmGoV55A_A4DwEbTx-vN6Fli6d63vNY4ju6xc

Imagine que você está jogando beisebol e que está segurando o bastão. A multidão está gritando e você está se preparando para tentar acertar a bola. O jogador arremessa uma bola rápida viajando cerca de 144 a 152 km/h, o que leva cerca de 400 milissegundos (ms) para alcançar a luva do apanhador. Você rebate e perde o primeiro arremesso porque seu tempo tempo de rebate foi um tanto fora do esperado. Você se pergunta se deveria ter batido um pouco mais cedo ou um pouco mais tarde para acertar a bola em cheio. Essa diferença de tempo pode ser considerada a margem de erro e nos diz o quão perto ou longe seu tempo estava ao rebater para acertar a bola em cheio.

## Margem de erro no marketing

A margem de erro também é importante no marketing. Vamos usar o teste A/B como exemplo. O **teste A/B** (ou teste de divisão) testa duas variações da mesma página da web para determinar qual página é mais bem-sucedida em atrair tráfego de usuários e gerar receita. O tráfego de usuários que é monetizado é conhecido como **taxa de conversão**. O teste A/B permite que os profissionais de marketing testem e-mails, anúncios e páginas de destino para encontrar os dados por trás do que está funcionando e do que não está. Os profissionais de marketing usam o **intervalo de confiança** (determinado pela taxa de conversão e a margem de erro) para entender os resultados.

Por exemplo, suponha que você esteja realizando um teste A/B para comparar a eficácia de duas linhas de assunto de e-mail diferentes para atrair as pessoas a abrir o e-mail. Você encontra essa linha de assunto A: “Oferta especial só para você” resultou em uma taxa de abertura de 5% em comparação com a linha de assunto B: “Não perca esta oportunidade” a 3%.

Significa que a linha de assunto A é melhor que a linha de assunto B? Depende da sua margem de erro. Se a margem de erro foi de 2%, a taxa de abertura real ou intervalo de confiança da linha de assunto A está em algum lugar entre 3% e 7%. Já que a extremidade inferior do intervalo se sobrepõe aos resultados da linha de assunto B em 3%, você não pode concluir que há uma diferença estatisticamente significativa entre a linha de assunto A e B. Examinar a margem de erro é importante ao tirar conclusões com base em seu teste resultados.

## Quer calcular sua margem de erro?

Tudo o que você precisa é o tamanho da população, o nível de confiança e o tamanho da amostra. Para entender melhor esta calculadora, revise estes termos:

- **Nível de confiança:** uma porcentagem que indica a probabilidade de sua amostra refletir com precisão a população maior.
- **População**: o número total de onde você extraiu sua amostra.
- **Amostra**: uma amostra é uma parte de uma população representativa da população.
- **Margem de erro:** a quantidade máxima que se espera que os resultados da amostra sejam diferentes dos da população real.

Na maioria dos casos, é usado um nível de confiança de 90% ou 95%. Mas, dependendo do seu setor, convém definir um nível de confiança mais rigoroso. Um nível de confiança de 99% é razoável em algumas indústrias, como a indústria farmacêutica.

Depois de definir o tamanho da população, o tamanho da amostra e o nível de confiança, insira as informações em uma calculadora de margem de erro como as abaixo:

- [Calculadora de margem de erro por Good Calculators (calculadoras online gratuitas)](https://goodcalculators.com/margin-of-error-calculator/)
- [Calculadora de margem de erro da CheckMarket](https://www.checkmarket.com/sample-size-calculator/#sample-size-margin-of-error-calculator)

## Principal conclusão

A margem de erro é usada para determinar o quão próximo o resultado da sua amostra está do que o resultado provavelmente teria sido se você pudesse ter pesquisado ou testado toda a população. A margem de erro ajuda você a entender e interpretar resultados de pesquisas ou testes na vida real.  Calcular a margem de erro é particularmente útil quando você recebe os dados para analisar. Após usar uma calculadora para calcular a margem de erro, você saberá o quanto os resultados da amostra podem diferir dos resultados de toda a população.

# Teste seu conhecimento sobre a margem de erro

## Parabéns! Você foi aprovado!

**Nota recebida:** 100%

**Para ser aprovado:** 80% ou superior

### Perguntas e Respostas

**1. Pergunta 1**

*Preencha a lacuna: A margem de erro é a quantidade _____ que se espera que os resultados da amostra sejam diferentes daqueles da população real.*

1 / 1 ponto

**Resposta:** máxima

**Justificativa:** A margem de erro é a quantidade máxima que se espera que os resultados da amostra sejam diferentes daqueles da população real.

**2. Pergunta 2**

*Em uma pesquisa sobre um novo produto de limpeza, 75% dos entrevistados relataram que comprariam o produto novamente. A margem de erro da pesquisa é de 5%. Com base na margem de erro, qual intervalo percentual reflete a verdadeira resposta da população?*

1 / 1 ponto

**Resposta:** Entre 70% e 80%

**Justificativa:** Com base na margem de erro, entre 70% e 80% reflete com precisão a verdadeira resposta da população.

**5. Pergunta 5**

*Um analista de dados de uma empresa de software quer saber mais sobre os concorrentes do setor. O analista tem um conjunto de dados de três anos atrás e percebe que muitas das empresas e produtos no conjunto de dados mudaram. O que faz o analista decidir que os dados são insuficientes, então eles devem gerar novos dados?*

1 ponto

**Resposta:** São dados desatualizados

**Justificativa:** No setor de software, onde há constantes fusões e evoluções, dados de três anos atrás são considerados desatualizados e, portanto, insuficientes para análises atuais.

---

# Desafio da Semana 1

# Resultados do Curso

**Parabéns! Você foi aprovado!**

**Nota recebida:** 100%

**Nota do envio mais recente:** 100%

**Para ser aprovado:** 80% ou superior

## Perguntas e Respostas

1. **Pergunta 1**
    
    *Preencha a lacuna: A _____ de dados referem-se à precisão, integridade, consistência e confiabilidade dos dados ao longo de seu ciclo de vida.*
    
    **Resposta:** Integridade
    
    **Justificativa:** A integridade dos dados é a precisão, integridade, consistência e confiabilidade dos dados ao longo de seu ciclo de vida.
    
2. **Pergunta 2**
    
    *Uma empresa de saúde mantém cópias de seus dados em vários locais do país. Os dados ficam comprometidos porque cada local cria uma cópia do original em diferentes horários do dia. Qual dos seguintes processos causou o comprometimento?*
    
    **Resposta:** Replicação de dados
    
    **Justificativa:** A replicação de dados causou o comprometimento. A replicação de dados é o processo de armazenamento de dados em vários locais. Se não for feita corretamente, a replicação pode comprometer a integridade e causar inconsistências.
    
3. **Pergunta 3**
    
    *Um analista de dados recebe um conjunto de dados para análise. Inclui dados sobre a população total de cada país nos últimos 20 anos. Com base nos dados disponíveis, um analista seria capaz de determinar as razões por trás do aumento da população de um determinado país de 2016 a 2017.*
    
    **Resposta:** Falso
    
    **Justificativa:** Com base nos dados disponíveis, o analista precisaria de mais dados para determinar as razões por trás do aumento da população.
    
4. **Pergunta 4**
    
    *As linhas 10 e 11 contêm dados duplicados.*
    
    **Resposta:** Falso
    
    **Justificativa:** As linhas 10 e 11 não contêm dados duplicados.
    
5. **Pergunta 5**
    
    *Um analista de dados de uma empresa de software quer saber mais sobre os concorrentes do setor. O analista tem um conjunto de dados de três anos atrás e percebe que muitas das empresas e produtos no conjunto de dados mudaram. O que faz o analista decidir que os dados são insuficientes, então eles devem gerar novos dados?*
    
    **Resposta:** São dados desatualizados
    
    **Justificativa:** Este exemplo descreve dados desatualizados, que são insuficientes. Se um conjunto de dados estiver desatualizado, isso significa que os dados são antigos e provavelmente não são mais relevantes.
    
6. **Pergunta 6**
    
    *Ao coletar dados por meio de uma pesquisa, as empresas podem economizar dinheiro pesquisando 100% da população.*
    
    **Resposta:** Falso
    
    **Justificativa:** Usar 100% de uma população é o ideal, mas pode ser muito caro coletar dados de uma população inteira.
    
7. **Pergunta 7**
    
    _Preencha a lacuna: O viés de amostragem na coleta de dados acontece quando uma amostra não é representativa da ____*.*
    
    **Resposta:** *A: a população como um todo*
    
    **Justificativa:** Exemplo de viés é quando um exemplo não é representativo da população como um todo.
    
8. **Pergunta 8**
    
    *Às vezes, durante a análise, um analista descobre que é necessário ajustar o objetivo do negócio. Quando isso acontece, o analista deve tomar a iniciativa de fazê-lo sem envolver os outros para respeitar seu tempo.*
    
    **Resposta:** Falso
    
    **Justificativa:** Se um analista de dados acredita que o objetivo de negócios deve ser ajustado, é importante primeiro discutir com as partes interessadas.