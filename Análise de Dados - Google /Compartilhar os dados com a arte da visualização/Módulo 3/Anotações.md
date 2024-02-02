# Módulo 3 - Criando história com dados

# Usando dados para desenvolver narrativas

- Storytelling com dados
- Data visualization
- Data Storytelling
    - Communicating the meaning of a dataset with visuals and a narrative that are customized for each particular audience

## Narrativas eficientes com dados

Em Data Analytics, a definição de **storytelling com dados** é o ato de comunicar o sentido de um conjunto de dados com visuais, e uma narrativa que é personalizada para um público-alvo em particular. No jornalismo de dados, os jornalistas obtém o engajamento de seu público-alvo de leitores por meio da combinação entre visualizações, narrativa e contexto nos artigos com base em dados. Acontece que analistas de dados e jornalistas de dados tem muito em comum! Como um analista de dados júnior, você pode aprender algumas coisas com o jornalismo de dados sobre *storytelling* efetivo. Continue a leitura para explorar o trabalho e o papel de um jornalista de dados ao contar uma boa história.

**Observação:** essa leitura veio de um artigo publicado no *The New Yorker*. Não assinantes podem acessar alguns artigos de graça por mês. Se você já atingiu seu limite mensal de artigos grátis, marque o artigo e volte a ele em outro momento.

## Dê um passeio por um artigo com base em dados

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/5c3ub0SwTumN7m9EsL7peQ_20854051effb4411a8d99606f9bdc037_Screen-Shot-2021-02-26-at-5.09.46-PM.png?expiry=1706832000000&hmac=Z9JCBDkCVHYm5bdOwQ9HJMgvcoLYXJYDW9Tljdx-YCY

[Ben Wellington](https://www.newyorker.com/contributors/ben-wellington), colaborador na revista *The New Yorker*, e professor no Pratt Institute, usou o [portal de dados abertos](https://nycopendata.socrata.com/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9?) da cidade de Nova Iorque para rastrear as reclamações de barulho que foram registradas nas solicitações de serviço. Ele analisou os dados para ganhar um entendimento mais quantitativo sobre de onde o barulho estava vindo e quais vizinhos eram os mais barulhentos. Então, apresentou suas descobertas no artigo [Mapping New York's Noisiest Neighborhoods](https://www.newyorker.com/tech/annals-of-technology/mapping-new-york-noise-complaints) (Mapeando os vizinhos mais barulhentos de Nova Iorque).

Primeiro, clique no link acima para dar uma olhada no artigo e se familiarizar com as visualizações de dados. Então, pegue o ônibus do passeio pelos dados! Você será direcionado a três visualizações (paradas) para observar como cada visualização ajudou a fortalecer o *storytelling* como um todo no artigo.

### Primeira parada: definindo o contexto

Mais cedo, no treinamento, você aprendeu como o contexto é importante para entender os dados. **Contexto** é a condição em que algo existe ou acontece. Com base na classificação das reclamações de barulho, o jornalista de dados definiu o contexto no artigo ao definir o que as pessoas consideravam como barulho.

No artigo, reveja o [combo de tabela e gráfico de barras](https://media.newyorker.com/photos/590965cfebe912338a3758c4/master/w_1600%2Cc_limit/Wellington-noise-ComplaintCounts.jpg) que classifica as reclamações de barulho. Avalie a visualização:

- **Como a visualização ajuda a definir o contexto?** O combo de tabela e gráfico de barras é eficiente ao classificar as categorias de barulho em percentuais de reclamações registradas. Isso ajuda a definir o contexto, ao responder à pergunta, “o que é barulho?” Repare que o jornalista de dados criou um combo de tabela e gráfico de barras, em vez de um gráfico de pizza. Com 11 categorias de barulho, uma lista com um gráfico de barras mostrando as proporções relativas é uma representação elegante. Um gráfico de pizza com 11 pedaços teria sido mais difícil de ler.
- **Como a visualização ajuda tornar os dados mais claros?** Se você somar os percentuais nas categorias no combo de tabela e gráfico de barras, o total é de noventa e oito porcento. Há uma diferença de dois porcento que não pode ser contabilizada na visualização. Portanto, em vez de tornar os dados mais claros, a visualização na verdade causa um pouco de confusão. Uma lição: sempre se certificar de que a soma de suas porcentagens é correta. Às vezes, arredondar casas decimais para cima ou para baixo faz com que os percentuais se desencontrem, portanto sua soma total não é 100%.
- **Você percebe uma boa prática de visualização de dados?**  Você aprendeu que uma tabela complementar no Tableau mostra os dados de forma diferente, caso alguém em seu público-alvo prefira tabelas. Aparentemente, o jornalista de dados teve a mesma ideia ao usar um combo de tabela e gráfico de barras. **Observação:** para lembrar: uma tabela complementar no Tableau é exibida logo ao lado de uma visualização. Uma tabela complementar apresenta os mesmos dados que a visualização, mas em formato de tabela. Você pode assistir novamente ao vídeo [Como ser criativo](https://www.coursera.org/learn/compartilhar-os-dados-com-a-arte-da-visualizacao/lecture/Eytgs/como-ser-criativo), que inclui um exemplo de tabela complementar.

### Segunda parada: analisando variáveis

Após definir o contexto, ao identificar as categorias de barulho, o jornalista de dados descreve sua análise dos dados sobre o barulho. Uma análise interessante é a distribuição das reclamações de barulho versus o período do dia.

No artigo, reveja o [gráfico de área empilhada](https://media.newyorker.com/photos/590965cd1c7a8e33fb38d4ac/master/w_1600%2Cc_limit/Wellington-noise-ComplaintsHours.jpg) para a distribuição das reclamações pela hora do dia. Avalie a visualização:

- **Como a visualização se sai em relação à regra dos cinco segundos?** Lembre-se de que a regra dos cinco segundos determina que você deve entender o que está sendo apresentado dentro dos cinco primeiros segundos a partir do momento em que você vê um gráfico. Supomos que essa visualização se sai muito bem! Os gráficos de área com música alta e latido de cães ajuda o público-alvo a entender que a maior parte das reclamações sobre barulhos desse tipo foram feitas durante os horários da noite e começo da manhã (entre as 10 da noite e 2 da manhã). Repare também que o código de cores na legenda se alinha com as cores no gráfico. A legenda de um gráfico normalmente coloca a categoria mais abrangente no topo, mas ao invés disso, o jornalista de dados escolheu organizar a legenda de modo que a categoria mais abrangente, “Barulho de música ou festa”, apareça na base. Quanto tempo você acha que esse alinhamento poupou aos leitores?
- **Como a visualização ajuda tornar os dados mais claros?**  Ao contrário da visualização da parada anterior, essa visualização faz um trabalho melhor em mostrar claramente que todas as percentagens somadas tem como resultado 100%.
- **Você percebe uma boa prática de visualização de dados?**  Como uma boa prática, tanto o eixo x quanto o eixo y devem ser identificados. Mas o jornalista de dados escolheu incluir % ou A.M. e P.M. com cada seleção no eixo. Como resultado, não é necessário nomear o eixo x como “Hora do dia” e o eixo y como “Percentual de reclamações de barulho”. Isso demonstra que um pouco de criatividade ao dar nomes pode ajudá-lo a conseguir um gráfico mais limpo.

### Terceira parada: chegando às conclusões

Após descrever como os dados foram analisados, o jornalista de dados compartilha quais bairros são os mais barulhentos por meio de uma variedade de visualizações: [combo de tabela e gráfico de barras](https://media.newyorker.com/photos/590965ceebe912338a3758c2/master/w_1600%2Cc_limit/Wellington-noise-ComplaintsNeighborhoods.jpg), [mapa de densidade](https://media.newyorker.com/photos/590965cfc14b3c606c1067b0/master/w_1600%2Cc_limit/Wellington-noise-complete.jpg), e [mapa de bairros](https://media.newyorker.com/photos/590965d0ebe912338a3758c8/master/w_1600%2Cc_limit/Wellington-noise-WilliamsburgDetail.jpg).

No artigo, reveja o [mapa de bairros](https://media.newyorker.com/photos/590965d0ebe912338a3758c8/master/w_1600%2Cc_limit/Wellington-noise-WilliamsburgDetail.jpg) para saber o quanto um bairro barulhento é próximo de um silencioso. Avalie a visualização:

- **Como a visualização ajuda a defender um ponto de vista?** O jornalista de dados observou que uma das vizinhanças mais barulhentas ficava logo ao lado de uma das mais quietas. O mapa de bairros é efetivo para enfatizar essa observação por meio de uma área azul escuro versus uma área branca.
- **Como a visualização ajuda tornar os dados mais claros?** A visualização classifica os dados por bairro e permite ao público-alvo acompanhar quando o jornalista se concentra especificamente em Williamsburg, East Williamsburg, e nos bairros North Side/South Side.
- **Você percebe uma boa prática de visualização de dados?**  Cada bairro está nomeado de forma direta, portanto uma legenda não é necessária.

## Parada final: se inspirar

Esperamos que você tenha aproveitado seu passeio pelo trabalho de um jornalista de dados! Que isso inspire seu *storytelling* com dados a ser tão atraente quanto possível. Para mais informações sobre *storytelling* com dados efetivo, leia esses artigos:

- [O que é o *Storytelling* com dados?](https://www.nugit.co/what-is-data-storytelling/)
- [A arte do *Storytelling* em Analytics e Ciência de Dados | Como criar narrativas com dados?](https://www.analyticsvidhya.com/blog/2020/05/art-storytelling-analytics-data-science/)
- [Usando Dados e Analytics para contar uma história](https://www.gartner.com/smarterwithgartner/use-data-and-analytics-to-tell-a-story/)
- [Conte uma história com significado usando dados](https://www.thinkwithgoogle.com/marketing-resources/data-measurement/tell-meaningful-stories-with-data/)

### Como falar com o seu público-alvo

- Engage your audience
- Um analista de dados utiliza o recurso spotlighting para identificar os dados mais relevantes derivados de sua análise e eliminar os detalhes menos importantes. O recurso spotlighting envolve fazer uma varredura nos dados para identificar rapidamente os insights mais importantes.

## Registro de aprendizagem: Conte uma história com dados

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/dF83X-ZOQHWfN1_mTrB1dg_0c362e4fc3b349b5b5627a810347bedf_pencil-journal-entry.png?expiry=1706832000000&hmac=7RoTFB2Uglx_hhKKEvYXnHfoC0grY4Mk6g2NRH-wlmc

## Visão geral

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/BZoPGCbqS32aDxgm6mt9kg_bfbeb57eeb1743938a5041c2251e2ff0_line-y.png?expiry=1706832000000&hmac=GKOxFW4wv06vkvJ3YNpmheLPEpgGy6I8IPcqOKljIQs

Você aprendeu como o *storytelling* com dados e as visualizações podem ser ferramentas poderosas para comunicar suas descobertas de dados para o seu público-alvo. Agora, você vai fazer uma anotação no seu registro de aprendizagem para refletir tanto sobre o storytelling com dados quanto sobre a visualização. No momento em que você terminar essa anotação, você terá um entendimento mais aprofundado sobre como você pode combinar esses conceitos para se comunicar de forma mais efetiva. Isso irá ajudá-lo quando começar a compartilhar as suas visualizações e apresentações como analista de dados.

## Storytelling com dados e visualização

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/BZoPGCbqS32aDxgm6mt9kg_bfbeb57eeb1743938a5041c2251e2ff0_line-y.png?expiry=1706832000000&hmac=GKOxFW4wv06vkvJ3YNpmheLPEpgGy6I8IPcqOKljIQs

Antes que você comece a escrever sua resposta no modelo de registro de aprendizagem pelo link abaixo, tire um momento para considerar como o *storytelling* com dados e visualização são usados para comunicar algo sobre os dados.

**Storytelling com dados** significa comunicar o significado de um conjunto de dados com visuais e uma narrativa que são personalizados para um público-alvo em particular.

Por exemplo, algumas empresas de streaming de música enviam para seus clientes um e-mail com a sua “retrospectiva anual”. Nesses e-mails, eles informam seus clientes quais são os artistas e músicas que eles mais ouviram. Dessa forma, as empresas usam os dados de seus clientes para contar uma história.

**Visualização de dados** é a representação e apresentação dos dados para ajudar no entendimento. Você pode usar diagramas, gráficos, nuvens de palavras e outras representações visuais para ajudar seu público-alvo a ver e entender seus dados com clareza.

Os efeitos do *storytelling* com dados e visualização de dados podem ser poderosos. O *storytelling* com dados e a visualização de dados pode cativar seu público-alvo, tornar suas histórias memoráveis, tocar os corações das pessoas e inspirá-las a agirem.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/drxWtX30T3O8VrV99F9zJQ_627b88a791d841ff8b359c55947a4b58_graphic-line-right.png?expiry=1706832000000&hmac=yvui50iXocg-FLAEz1KTvMrGVj-fAl7BF2SXMss7Hyw

### Acesse seu registro de aprendizagem

Para usar o modelo deste item do curso, clique no link abaixo e selecione “Usar modelo”.

Link para o modelo de registro de aprendizagem: [Conte uma história com dados](https://docs.google.com/document/d/18supoxx2UXq0cyaxraOgNN-9wGmpHsvzsbZNrKnzMYw/template/preview?resourcekey=0-cpUrzO49CLgKtGJDGP2TJg)

OU

Caso você não tenha uma conta do Google, faça o download do modelo diretamente pelo anexo abaixo.

### *Modelo de registro de aprendizagem_Conte uma história com dados*

Arquivo DOCX

[C6M3 - Attachment 1_PORDOCX File](https://d3c33hcgiwev3.cloudfront.net/BcZ-PtOHTlmGfj7Th55Zbw_09dc64e26f90487985517e98f7a62ff1_C6M3---Attachment-1_POR.docx?Expires=1706832000&Signature=XxDnXy2FhUtXhwzZMtbbwjyIoijITh9MwDHGQqrnIjFLA9BFbn14yZr4SroCikF8XrvJAAyG49Syn2o3blSU8d918lnRWIgVF8HNVGSJ7IFW6pLfd366MBBABNX63gt1QvHJTkM4lrAn1paGfYOY2QCEks~ABhSnl-flmnH8fv4_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/U862lyMQTyWOtpcjEL8lQw_6d7bc93a6a8e4faa9fd52d3404699f7f_graphic-line-left.png?expiry=1706832000000&hmac=4MoeeuZhs3c1r50Bpf6EX13MsEI6CcqQ9QKxlBhZvzw

## Reflexão

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/BZoPGCbqS32aDxgm6mt9kg_bfbeb57eeb1743938a5041c2251e2ff0_line-y.png?expiry=1706832000000&hmac=GKOxFW4wv06vkvJ3YNpmheLPEpgGy6I8IPcqOKljIQs

Agora que você pensou um pouco mais sobre o *storytelling* com dados e visualização, tire um momento para refletir sobre esses conceitos. Em sua anotação no registro de aprendizagem, escreva duas ou três frases (40-60 palavras) como resposta a cada pergunta abaixo:

- Qual foi a coisa mais interessante que você aprendeu na Semana 3 até agora?
- Que aspectos do *storytelling* com dados e visualização você quer explorar com mais detalhes? Por que esses aspectos são importantes ou interessantes para você?
- Que histórias relacionadas à sua própria vida ou sociedade você tem curiosidade em contar usando dados?
- Se você pudesse contar qualquer história usando dados, qual seria, e por que?

Quando você terminar sua anotação no modelo de registro de aprendizagem, salve o documento para que sua resposta fique guardada em um lugar acessível. Isso o ajudará a continuar aplicando a análise de dados na vida cotidiana. Você também poderá acompanhar seu progresso e crescimento como analista de dados.

## Teste seu conhecimento sobre histórias com base em dados

**Teste para praticar.**

- **Duração:** 6 min.
- **Pontos Totais Disponíveis:** 3 pontos.

**Resultado:** Parabéns! Você foi aprovado!

**Nota recebida:** 100%

**Para ser aprovado:** 80% ou superior

### Pergunta 1

**Qual dos elementos a seguir envolve o storytelling com dados? Selecione todas as opções válidas.**

- **Escolher apenas pontos de dados que sustentam as suas ideias**
- **Comunicar o significado de um conjunto de dados com elementos visuais**

*Correto*: O storytelling com dados envolve comunicar o significado de um conjunto de dados com elementos visuais e uma narrativa personalizada para o seu público-alvo.

- **Usar uma narrativa personalizada para o seu público-alvo**

*Correto*: O storytelling com dados envolve comunicar o significado de um conjunto de dados com elementos visuais e uma narrativa personalizada para o seu público-alvo.

- **Descrever as etapas do seu processo de análise**

### Pergunta 2

**Um analista de dados apresenta uma narrativa dos dados para um público-alvo. Seu intuito é captar e prender a atenção e o interesse do público-alvo. Qual conceito de storytelling com dados essa situação descreve?**

- **Mensagem principal**
- **Engajamento**

*Correto*: O engajamento está ligado com captar e reter o interesse e a atenção do público-alvo.

- **Narrativa**
- **Visuais**

### Pergunta 3

**Quais das atividades a seguir um analista de dados deveria fazer em sua apresentação? Selecione todas as opções válidas.**

- **Identificar ideias ou conceitos que se repetem**

*Correto*: A apresentação envolve passar pelos dados para identificar rapidamente os insights mais importantes. É possível fazer isso por meio de notas no quadro, buscando ideias mais amplas e identificando conceitos que aparecem repetidamente.

- **Fazer, em um quadro, anotações que contenham insights da análise de dados**

*Correto*: A apresentação envolve passar pelos dados para identificar rapidamente os insights mais importantes. É possível fazer isso por meio de notas no quadro, buscando ideias mais amplas e identificando conceitos que aparecem repetidamente.

- **Focar nos detalhes e resultados da análise**
- **Procurar por ideias e mensagens universais amplas**

*Correto*: A apresentação envolve passar pelos dados para identificar rapidamente os insights mais importantes. É possível fazer isso por meio de notas no quadro, buscando ideias mais amplas e identificando conceitos que aparecem repetidamente.

---

# Use os painéis do Tableau

- Noções básicas dos painéis do Tableau

## Painéis e insights estáticos

Anteriormente, você aprendeu sobre o *storytelling* com dados e a interpretar seu conjunto de dados por meio de uma narrativa. Nessa leitura, você explorará a importância de usar painéis e insights estáticos para tornar seus dados ainda mais claros.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/twIoYsxCQvWCKGLMQpL1ag_a4f93ceb32fe4e0b96e55610e2a5c7fc_Screen-Shot-2021-02-28-at-4.46.25-PM.png?expiry=1706918400000&hmac=6r6C7dyo5ow4o7pVC0yUgcFMYwbkCGCqFVaaYhat5so

Os **painéis** e **insights estáticos** permitem ao cliente ou usuário a possibilidade de controlar suas narrativas. Com painéis, qualquer um pode usar os dados e criar suas próprias determinações. Um painel pode ser construído em cima de insights estáticos ou **dados estáticos**, que são dados que não se alteram uma vez que foram registrados. Isso te permite controlar com mais firmeza a narrativa e o modo como seus dados são visualmente apresentados, seja por meios de gráficos, diagramas, etc.

## Dinâmico versus estático

Identificar se o dado é dinâmico ou estático depende de certos fatores:

- Quão antigo é o dado?
- Quanto tempo até que os insights estejam obsoletos ou não sejam mais válidos para a tomada de decisão?
- Esse dado ou essa análise precisa de atualização regular para se manter relevante?

**Dados estáticos** envolvem fornecer capturas de tela ou instantâneos nas apresentações, ou construir painéis usando instantâneos de dados. Há prós e contras no uso de dados estáticos.

**PRÓS**

- Se pode controlar com firmeza um ponto no tempo da narrativa dos dados e no insight.
- Permite que análises complexas sejam explicadas em profundidade para um público-alvo maior.

**CONTRAS**

- O insight começa a perder valor imediatamente e assim continua pelo tempo em que o dado permanecer em um estado estático.
- Instantâneos não conseguem acompanhar o ritmo da mudança nos dados.

**Dados dinâmicos** são aqueles com os quais você pode construir painéis, relatórios e exibições conectados a dados atualizados de forma automática.

**PRÓS**

- Os painéis podem ser construídos para serem mais dinâmicos e escaláveis.
- Fornecem os dados mais atualizados para as pessoas que precisam deles no momento em que elas precisam.
- Permite exibições de dados atualizados, com a possibilidade de construir “uma fonte única da verdade” para uso em vários casos.
- Permite que ações imediatas sejam tomadas nos dados que mudam com frequência.
- Minimiza tempo/recursos gastos nos processos para cada análise.

**CONTRAS**

- Podem ser necessários recursos de engenharia para manter os pipelines ativos e escaláveis, o que pode estar fora do escopo da alocação de recursos de dados em algumas empresas.
- Sem a habilidade para interpretar os dados, você pode perder o controle da narrativa, o que pode causar um caos de dados (por exemplo, equipes chegando a conclusões conflitantes baseadas nos mesmos dados).
- Pode causar potencialmente uma falta de confiança se os dados não são tratados adequadamente.

## Principais pontos

Os analistas precisam se familiarizar com os negócios e os dados, a fim de que possam recomendar quando for necessária uma atualização na análise dos dados estáticos, ou se ela deve ser revista. Além disso, esse insight de dados o ajudará a argumentar em favor de quaisquer tipos de análises, visualizações e adições de dados que sejam recomendados para os tipos de decisão que as empresas precisem tomar.

Mantenha esta [planilha de pesquisa com o cliente](https://docs.google.com/spreadsheets/d/1MJ5-hpr9qJ_prh72LqK7Cx934-_F7h09DYFUjuH-GeY/copy?resourcekey=0-GsJJfcZq7a1zGr1Dl49oMg#gid=0) à mão, visto que ela será útil para o próximo vídeo.

## Atividade prática: Como criar, filtrar e personalizar os gráficos

**Duração**: 30 min

**Pontos Totais Disponíveis**: 2 pontos

**Resultado**: Parabéns! Você foi aprovado!

**Nota recebida**: 100%

**Para ser aprovado**: 80% ou superior

## Pergunta 1: Visão geral da atividade

- **Objetivo**: Aprender a criar e personalizar gráficos em planilhas e Tableau.
- **Habilidades Adquiridas**:
    - Criar gráficos em planilhas e Tableau.
    - Personalizar gráficos usando filtros e estilos.

## Como criar um gráfico com uma planilha

1. **Selecionar Dados**: Realce células B3 a C7 para o gráfico.
2. **Inserir Gráfico**: No menu principal, clique em Inserir > Gráfico.
3. **Alterar Tipo de Gráfico**: Se necessário, mude para um gráfico de coluna.
4. **Filtrar Dados**: Use o ícone de filtro para excluir/incluir dados específicos.
5. **Aplicar Estilos**: Personalize as cores para melhorar a acessibilidade.

## Pergunta 2: Reflexões sobre a criação de gráficos

- **Vantagens e Desvantagens**:
    - **Vantagens**: Facilidade de uso e integração direta com dados.
    - **Desvantagens**: Limitações em design e manipulação de grandes dados.
- **Contribuição para o Conhecimento**:
    - Importância da escolha e personalização de gráficos para análise de dados eficaz e apresentações impactantes.

## Recursos adicionais

- **Gráficos no Planilhas Google**: Processo de criação de gráficos e dados de amostra.
- **Adicionar e editar um gráfico no Planilhas Google**: Artigo com instruções e vídeos.
- **Crie um gráfico no Microsoft Excel do início ao fim**: Guia com tutorial em vídeo.
- **Microsoft Excel: Criando e modificando gráficos**: Explicação dos gráficos no Excel com recursos para baixar.

Parabéns por concluir esta atividade prática! Uma boa resposta incluiria o modo como o editor de gráficos da planilha é uma forma simples e conveniente de visualizar dados. Além disso, considere o seguinte:

Os analistas de dados utilizam as planilhas para diversas tarefas de análise de dados, incluindo a criação de gráficos. O que você aprendeu sobre visualização nas planilhas pode ser aplicado à visualização de um painel. Em atividades posteriores, você utilizará esse conhecimento no Tableau, outra plataforma de visualização de dados. Assim, você poderá praticar mais visualização de dados - uma ferramenta essencial para todo analista de dados.

## Como criar seu primeiro painel no Tableau

Você vai aproveitar o que aprendeu sobre visualizações de dados e criar um painel.

O Tableau tem muitas funcionalidades para criação de painéis que são atualizados em tempo real e incluem vistas interativas.

Os painéis são importantes na análise de dados, permitindo que as pessoas observem essas informações de forma dinâmica e interativa, o que pode ajudar a melhorar suas apresentações de dados. As visualizações são mais eficazes quando exibidas às partes interessadas em um formato de painel que coloca as principais informações no mesmo lugar, facilitando a compreensão do que é realmente importante. Muitos painéis também são constantemente atualizados para incluir novos dados e podem ser interativos. Independentemente do estilo de painel que você escolher, eles podem ajudar a apresentar informações às partes interessadas de forma impactante.

**Abrir o Tableau**

Você precisa acessar e fazer o login no app on-line[Tableau Public](https://public.tableau.com/app/discover). Também pode acessar [Como usar o Tableau Public](https://www.coursera.org/teach/compartilhar-os-dados-com-a-arte-da-visualizacao/Bx1Guyq8EeyavRI3rIvGvQ/content/item/supplement/bMjvq) para saber como criar uma conta ou um perfil, carregar e vincular conjuntos de dados nesse aplicativo.

**Como acessar o conjunto de dados**

Clique no link a seguir para criar sua própria cópia do [Conjunto de dados de CO2](https://docs.google.com/spreadsheets/u/1/d/1LwGHDgJkXSm8b0ziSDyC8pQGqjYVGpX9mAEVPs2KQgY/copy).

Caso você não tenha uma Conta do Google, faça o download do Conjunto de dados de CO2 clicando abaixo:

[CO2 Dataset_PORXLSX File](https://d3c33hcgiwev3.cloudfront.net/gHB1PF6oRh2wdTxeqIYdYA_a32a1ddb91644c3caa5ef1102b05adf1_CO2-Dataset_POR.xlsx?Expires=1706918400&Signature=K7HiugAliuR7o6GRI9RWsQQkbj~j~bX7eWNLj0sKxuaFV7U~LTr-bNNwnXPhQwwnESBLPMBff5mp2yna96Mf0DxCI6mfG1yhh3xuQT7jJtS9mvAEZPlZnGZoMdOeNXp6Uf9X0V1KquCdIsfTBAe46MFvKkJXRbX2ZNTQljbFyRk_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)

**Carregar o conjunto de dados**

1.Agora que você fez o login no Tableau Public, acesse o painel da fonte de dados clicando na **guia Create** e, em seguida, na opção **Web Authoring** no topo da página de destino. Depois, clique no botão central “Upload from computer” e selecione o Conjunto de dados de CO2 que foi baixado no seu dispositivo.

2.Após o carregamento do conjunto de dados, direcione sua atenção para a parte inferior das guias da fonte de dados, no canto inferior esquerdo da janela. Clique para abrir a pasta de fontes de dados que o Tableau Public criou na sua máquina automaticamente. A partir de agora, você deve salvar na pasta de fontes de dados todos os conjuntos de dados com que for trabalhar. Recomendamos manter seus arquivos de dados centralizados para que fiquem organizados.

3.Todas as guias do conjunto de dados estão dispostas em uma barra de ferramentas vertical no lado esquerdo da página.

4.Arraste a planilha com o nome **CO2 Data Cleaned** (Dados de CO2 limpos) da barra esquerda até o meio da página e depois clique na opção "Update Automatically".

5.Volte para a guia **Sheet 1** na parte inferior da página e clique nela. Nesse momento, uma nova janela será exibida com um painel vertical chamado "Tables".

6.Arraste o ícone *verde* "# Year" para a caixa **Columns** localizada na parte superior da página.

7.Arraste o ícone *verde* "# CO2 (kt)" para a caixa **Rows** localizada na parte superior da página.

8.Arraste o ícone *azul* "Abc Region" para o Ícone **Colors** com os quatro pontos coloridos.

9.Você criou seu primeiro painel básico de linha do tempo, que indica o nível de CO2 (quilotoneladas) emitido em várias regiões do mundo de 1960 a 2012.

10.Também é possível fazer uma análise preliminar do número de categorias, linhas, intervalos de dados e valores nulos que aparecem na página da fonte de dados. Assim, você terá uma ideia de mais tipos e estilos de painéis que podem ser gerados com base no conjunto de dados.

**Criar painéis adicionais**

Confira instruções [aqui](https://help.tableau.com/current/pro/desktop/en-us/dashboards_create.htm) sobre como criar outros tipos de painéis com o Tableau.

Ótimo, você acabou de criar seu primeiro painel básico!

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/45ffcb1e-3a27-4099-941a-d772ac3d089c/Untitled.png)

## Atividade prática: Construa um painel no Tableau

### Parabéns! Você foi aprovado!

**Nota recebida:** 100%

---

## Pergunta 1: Visão geral da atividade

### O que você vai precisar

- Um modelo inicial com algumas fontes de dados existentes e visualizações, bem como um conjunto de dados fornecido.

### Abrir o modelo e carregar os dados

- Abra o Modelo Inicial de Painel no Tableau Public Desktop.
- Carregue o conjunto de dados conforme as instruções.

### Criar um painel

- Utilize o conjunto de dados do World Bank CO2 com duas visualizações separadas.
- Adicione as planilhas ao painel para mostrar a média de CO2 per capita de cada país e a produção de CO2 por região ao longo do tempo.

### Adicionar visualizações

- Arraste as planilhas para o painel conforme a preferência de layout.

### Limpar o painel

- Remova legendas desnecessárias e configure as restantes como flutuantes.

### Reflexão

- Organizei as planilhas no painel para destacar a correlação entre a produção per capita de CO2 (mapa) e a produção total de CO2 por região (gráfico de linhas), facilitando a compreensão visual das tendências globais.
- Os painéis podem ser usados para monitoramento em tempo real, análise comparativa, ou para destacar padrões e anomalias em conjuntos de dados complexos.

**Feedback:** Parabéns por concluir esta atividade prática! Uma boa resposta incluiria como é possível ordenar o layout de um painel com visualizações e legendas correspondentes, para ajudar a enfatizar os principais pontos importantes vindos dos dados.

*A eficácia de um analista de dados depende fortemente de sua capacidade de comunicar suas descobertas às partes interessadas. Um painel é uma forma acessível e completa de se comunicar, contando histórias por meio da visualização de dados.*

**Pergunta 1**

**Preencha a lacuna:** O painel organiza as informações extraídas de vários conjuntos de dados em um local centralizado. Isso permite que a informação seja _______. Selecione todas as opções válidas.

- [x]  protegida
- [x]  acompanhada (Correto) - Um painel é usado para acompanhar, analisar e visualizar informações.
- [x]  analisada (Correto) - Um painel é usado para acompanhar, analisar e visualizar informações.
- [x]  visualizada (Correto) - Um painel é usado para acompanhar, analisar e visualizar informações.

---

**Pergunta 2**

Um analista de dados está escolhendo o layout de seu painel. Ele quer que o tamanho do layout se ajuste automaticamente com base no tamanho do painel. Deve, portanto, usar um layout lado a lado.

- [x]  Verdadeiro (Correto) - Para redimensionar automaticamente o layout com base no tamanho do painel, o analista deve usar um layout lado a lado.
- [ ]  Falso

---

**Pergunta 3**

Por quais motivos se escolhe utilizar filtros ao criar uma visualização de um painel? Selecione todas as opções válidas.

- [x]  Para focalizar no que é importante para suas partes interessadas (Correto) - Pode-se escolher usar filtros a fim de destacar os elementos isolados dos dados ou para focalizar o que é importante para suas partes interessadas.
- [x]  Para destacar elementos isolados dos dados (Correto) - Pode-se escolher usar filtros a fim de destacar os elementos isolados dos dados ou para focalizar o que é importante para suas partes interessadas.
- [ ]  Para colocar os dados em ordem cronológica
- [ ]  Para remover pontos fora da curva, que não estão em conformidade com sua hipótese

---

# Como compatilhar história com dados

- **Dicas para apresentações convincentes**
    - Characters
    - Setting
    - Plot
    - Big Reveal
    - Aha moment
    
    Correto
    A grande revelação tem a ver com como os dados já haviam mostrado que o problema pode ser resolvido. O momento eureka ocorre quando as recomendações são compartilhadas.
    
- Como compartilhar uma narrativa

Os analistas de dados usam com frequência temas para tornar suas apresentações de slides mais consistentes e profissionais. O que os temas controlam, a fim de tornar isso possível? Selecione todas as opções válidas.

- [x]  **Posicionamento do texto e recursos visuais**

Correto

Os temas tornam as apresentações de slides mais consistentes e profissionais ao controlar cores, tipos e tamanhos de fontes, e o posicionamento do texto e recursos visuais.

- [ ]  **Conteúdo**
- [x]  **Tipos e tamanhos de fontes**

Correto

Os temas tornam as apresentações de slides mais consistentes e profissionais ao controlar cores, tipos e tamanhos de fontes, e o posicionamento do texto e recursos visuais.

- [x]  **Cor**

Correto

Os temas tornam as apresentações de slides mais consistentes e profissionais ao controlar cores, tipos e tamanhos de fontes, e o posicionamento do texto e recursos visuais.

**Avaliar sua apresentação**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4b1ba6a6-3e61-4792-a384-c1790310ce59image2.png?expiry=1706918400000&hmac=p7IGMNr062nl4-fqej0NhxySG3Od_3-6tVgM28I19PQ

Assista o vídeo da sua apresentação. Enquanto assiste, verifique a checklist a seguir. Cada ponto é relacionado a uma prática recomendada para apresentações.

Você:

Usa uma abertura atrativa?

Começa com ideias mais amplas e, depois, fala de detalhes específicos?

Fala com frases curtas?

Faz uma pausa de cinco segundos após mostrar uma visualização de dados?

Faz uma pausa intencional em certos pontos?

Mantém o tom da sua voz?

Fica parado e se move com um propósito?

Mantém uma boa postura?

Olha para o seu público-alvo (ou câmera) enquanto fala?

Mantém a concisão em sua mensagem?

Finaliza explicando por que a análise de dados é importante?

**Avaliar seus slides**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4b1ba6a6-3e61-4792-a384-c1790310ce59image4.png?expiry=1706918400000&hmac=jIoWNK131K5n79K5nlQpx51NEIUtUit_zbOyj48daKI

A seguir, é hora de avaliar seus slides. Assista o seu vídeo novamente. Enquanto assiste, considere as seguintes perguntas. Cada pergunta está relacionada a uma prática recomendada para slides.

Você:

Incluiu um bom título e subtítulo que descrevem o que você está prestes a apresentar?

Incluiu a data da sua apresentação ou a data mais recente de atualização da apresentação?

Usou uma fonte com um tamanho que permite que o público-alvo leia facilmente os seus slides?

Mostrou quais métricas de negócios foram usadas?

Incluiu recursos visuais efetivos (como gráficos e tabelas)?

Após completar a checklist, guarde-a para mais tarde. Se a sua apresentação não seguiu todas as práticas recomendadas, não se preocupe. Mais adiante, neste curso, você aprenderá mais habilidades de apresentação para que possa gravar novamente e reavaliar essa apresentação.

**Reflexão**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4b1ba6a6-3e61-4792-a384-c1790310ce59image2.png?expiry=1706918400000&hmac=p7IGMNr062nl4-fqej0NhxySG3Od_3-6tVgM28I19PQ

Nesta atividade, você gravou e avaliou uma apresentação do painel que criou em uma atividade anterior. Na caixa de texto abaixo, escreva de duas a três frases (40 a 60 palavras) em resposta a cada uma das perguntas a seguir:

O que você aprendeu com a sua apresentação? Foi mais - ou menos - difícil do que você esperava?

O que deu certo nos seus slides? O que poderia ser melhorado?

1 / 1 ponto

Nesta atividade, aprendi a importância da clareza e organização nas apresentações, sendo mais desafiador do que esperava, especialmente ao organizar as capturas de tela e praticar a entrega. Os pontos fortes dos meus slides incluíam títulos claros e visualizações de dados eficazes, mas percebi a necessidade de usar fontes maiores e explorar diferentes layouts para melhor apresentação visual.

Correto

Parabéns por concluir esta atividade prática! Uma boa resposta incluiria o que você aprendeu com sua experiência de gravar e avaliar sua apresentação.

As apresentações são parte essencial do trabalho do analista de dados. A capacidade de compartilhar suas descobertas é crucial para comunicar-se com as partes interessadas, os colegas de trabalho ou qualquer tipo de público-alvo. Nas próximas aulas e atividades, você aprenderá mais sobre o que faz uma boa apresentação. Assim, você poderá recriar essa apresentação com mais habilidades e contexto, para sustentar seus esforços de desenvolver e refinar suas habilidades de apresentação.

A **grande revelação** indica como os dados solucionam o problema. Aqui, uma campanha de marketing oportuna pode aumentar as vendas de madeira serrada.

**Ambiente** é o que está acontecendo e outros antecedentes. Aqui, a diretora de marketing compartilha conjuntos de dados para uma análise aprofundada.

**Enredo** gera tensão na situação. Aqui, os personagens precisam de dados para comprovar a necessidade de uma campanha de marketing.

O **momento eureka** envolve recomendações baseadas em dados. Aqui, Libby sugere que a empresa execute uma campanha de marketing de madeira serrada ao longo de três dias.

**ersonagens** são pessoas afetadas por sua história. Aqui, são a diretora de marketing, a equipe executiva e a diretoria.

## Teste seu conhecimento sobre como comunicar histórias com dados

**Teste para praticar.**

Duração: 6 min.

Total de pontos disponíveis: 3.

**Resultado:** Parabéns! Você foi aprovado!

**Nota recebida:** 100%

**Nota mínima para aprovação:** 80%

### Pergunta 1

**Um novo desafio de um concorrente, um processo ineficiente que precisa ser melhorado ou uma oportunidade de negócios em potencial podem representar qual aspecto do storytelling com dados?**

- [x]  Enredo
- [ ]  Momento eureka
- [ ]  Ambiente
- [ ]  Grande revelação

**Resposta Correta:** Enredo

**Explicação:** Um novo desafio de um concorrente, um processo ineficiente que precisa ser melhorado ou uma oportunidade de negócios em potencial podem representar um enredo na narrativa dos dados. O enredo revela o problema e leva as personagens a agir.

### Pergunta 2

**Preencha a lacuna: Ao criar uma apresentação, uma ferramenta de criação de slides chamada ______ pode ser usada para controlar a cor, os tipos e tamanhos de fontes, e para posicionar o texto e os recursos visuais.**

- [ ]  motivos
- [x]  temas
- [ ]  esquemas
- [ ]  padrões

**Resposta Correta:** Temas

**Explicação:** Ao criar uma apresentação, os temas podem ser usados para controlar a cor, os tipos e tamanhos de fontes, e para posicionar o texto e os recursos visuais.

### Pergunta 3

**Um analista de dados inclui um recurso visual em sua apresentação para representar informações de um conjunto de dados. É importante que o recurso visual reflita as informações mais recentes. Por isso, o analista deseja que o recurso atualize automaticamente em caso de alteração no conjunto de dados original. O analista deve copiar e colar o recurso na apresentação.**

- [ ]  Verdadeiro
- [x]  Falso

**Resposta Correta:** Falso

**Explicação:** Você deve criar um link do recurso visual para seu arquivo original. Quando se copia e cola um recurso visual em uma apresentação, ele não é atualizado em caso de alterações ao conjunto de dados original. Como resultado, o recurso visual pode não refletir as informações mais recentes.

---

Glossário Semanal

[Glossário Semanal 3.docx](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/676235ae-e8df-45d7-b44e-23df882dbacb/Glossrio_Semanal_3.docx)

# Desafio Semanal 3