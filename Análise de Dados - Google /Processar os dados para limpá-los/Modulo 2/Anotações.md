## Sumário

---

# A limpeza de dados é essencial

## O que são dados sujos?

Anteriormente, discutimos que **dados sujos** são dados incompletos, incorretos ou irrelevantes para o problema que você está tentando resolver.  Esta leitura resume:

- Tipos de dados sujos que você pode encontrar
- O que pode ter causado a sujeira dos dados
- Como os dados sujos são prejudiciais às empresas

## Tipos de dados sujos

### Dados duplicados

| Descrição | Causas possíveis | Potenciais danos às empresas |
| --- | --- | --- |
| Qualquer registro de dados que apareça mais de uma vez | Entrada manual de dados, importação de dados em lote ou migração de dados | Métricas ou análises distorcidas, contagens ou previsões inflacionadas ou imprecisas, ou confusão durante a recuperação de dados |

### Dados desatualizados

| Descrição | Causas possíveis | Potenciais danos às empresas |
| --- | --- | --- |
| Qualquer dado antigo que deva ser substituído por informações mais recentes e mais precisas | Pessoas mudando de papéis ou empresas, ou software e sistemas se tornando obsoletos | Percepções imprecisas, tomada de decisões e análises |

### Dados incompletos

| Descrição | Causas possíveis | Potenciais danos às empresas |
| --- | --- | --- |
| Qualquer dado que esteja faltando campos importantes | Coleta de dados incorreta ou entrada de dados incorreta | Diminuição da produtividade, percepções imprecisas ou incapacidade de completar serviços essenciais |

### Dados incorretos/incisos

| Descrição | Causas possíveis | Potenciais danos às empresas |
| --- | --- | --- |
| Qualquer dado completo, mas impreciso | Erro humano inserido durante a entrada de dados, informação falsa ou dados falsificados | Percepções imprecisas ou tomada de decisões baseadas em informações erradas resultando em perda de receita |

### Dados inconsistentes

| Descrição | Causas possíveis | Potenciais danos às empresas |
| --- | --- | --- |
| Qualquer dado que utilize formatos diferentes para representar a mesma coisa | Dados armazenados incorretamente ou erros inseridos durante a transferência de dados | Pontos de dados contraditórios que levam a confusão ou incapacidade de classificar ou segmentar os clientes |

### Impacto comercial de dados sujos

Para uma leitura mais detalhada sobre o impacto comercial de dados sujos, insira o termo "dados sujos" na barra de busca de seu navegador preferido para trazer à tona numerosos artigos sobre o tópico. Aqui estão alguns impactos citados para certas indústrias a partir de uma pesquisa anterior:

- **Banking**: As imprecisões custam às empresas entre 15% e 25% da receita ([fonte](https://sloanreview.mit.edu/article/seizing-opportunity-in-data-quality/)).
- **Comércio digital:** Até 25% dos contatos do banco de dados B2B contêm imprecisões ([fonte](https://www.demandgen.com/dirty-data-what-is-it-costing-you/)).
- **Marketing e vendas:** 8 em cada 10 empresas disseram que dados sujos dificultam as campanhas de vendas ([fonte](https://www.dqglobal.com/2011/05/04/obsolete-or-dirty-data/)).
- **Assistência médica:** Os registros duplicados podem ser de 10% e até 20% dos registros eletrônicos de saúde de um hospital ([fonte](https://searchhealthit.techtarget.com/feature/Hospitals-battle-duplicate-medical-records-with-technology)).

---

# Começar a limpar os dados

## Ciladas comuns da limpeza de dados

Nesta leitura, você aprenderá a importância da limpeza de dados e como identificar erros comuns.

## Erros comuns a evitar

- **Não verificação de erros ortográficos:** Os erros ortográficos podem ser tão simples como erros de digitação ou de entrada. Na maioria das vezes a ortografia errada ou erros gramaticais comuns podem ser detectados, mas fica mais difícil com coisas como nomes ou endereços. Por exemplo, se você estiver trabalhando com uma tabela de planilhas de dados do cliente, você pode encontrar um cliente chamado "John" cujo nome foi inserido incorretamente como "Jon" em alguns lugares. A verificação ortográfica da planilha provavelmente não marcará isto, portanto, se você não verificar novamente os erros ortográficos e apanhar isto, sua análise terá erros nela.
- **Esquecer de documentar erros:** Documentar seus erros pode ser uma grande economia de tempo, pois ajuda a evitar esses erros no futuro, mostrando-lhe como resolvê-los. Por exemplo, você pode encontrar um erro em uma fórmula em sua planilha. Você descobre que algumas das datas em uma de suas colunas não foram formatadas corretamente. Se você tomar nota desta correção, poderá referenciá-la na próxima vez que sua fórmula for quebrada, e obter um avanço na solução de problemas. Documentar seus erros também ajuda a acompanhar as mudanças em seu trabalho, para que você possa recuar se uma correção não funcionou.
- **Não verificação de valores de campos errados:** Um valor errado acontece quando os valores são inseridos no campo errado. Estes valores ainda podem ser formatados corretamente, o que os torna mais difíceis de serem capturados se você não for cuidadoso. Por exemplo, você pode ter um conjunto de dados com colunas para cidades e países. Estes são o mesmo tipo de dados, por isso são fáceis de misturar. Mas se você estivesse tentando encontrar todas as instâncias da Espanha na coluna do país, e a Espanha tivesse sido inserida erroneamente na coluna da cidade, você perderia pontos de dados-chave. Garantir que seus dados tenham sido inseridos corretamente é a chave para uma análise precisa e completa.
- **Ignorando os valores ausentes:** Valores em falta em seu conjunto de dados podem criar erros e dar-lhe conclusões imprecisas. Por exemplo, se você estivesse tentando obter o número total de vendas dos últimos três meses, mas faltasse uma semana de transações, seus cálculos não seriam imprecisos. Como melhor prática, tente manter seus dados o mais limpos possível, mantendo a completude e consistência.
- **Apenas olhando para um subconjunto dos dados:** É importante pensar em todos os dados relevantes quando você estiver limpando. Isto ajuda a entender toda a história que os dados estão contando, e que você está prestando atenção a todos os possíveis erros. Por exemplo, se você estiver trabalhando com dados sobre padrões de migração de aves de diferentes fontes, mas você limpa apenas uma fonte, você pode não perceber que alguns dos dados estão sendo repetidos. Isto causará problemas em sua análise mais tarde. Se você quiser evitar erros comuns como duplicatas, cada campo de seus dados requer a mesma atenção.
- **Perder a noção dos objetivos comerciais:** Quando você estiver limpando dados, você pode fazer novas e interessantes descobertas sobre seu conjunto de dados - mas você não quer que essas descobertas o distraiam da tarefa em mãos. Por exemplo, se você estava trabalhando com dados meteorológicos para encontrar o número médio de dias chuvosos em sua cidade, você também pode notar alguns padrões interessantes sobre a queda de neve. Isso é realmente interessante, mas não está relacionado à pergunta que você está tentando responder no momento. Ser curioso é ótimo! Mas tente não deixar que isso o distraia da tarefa em mãos.
- **Não consertando a fonte do erro:** A correção do erro em si é importante. Mas se esse erro é realmente parte de um problema maior, você precisa encontrar a origem do problema. Caso contrário, você terá que continuar corrigindo esse mesmo erro uma e outra vez. Por exemplo, imagine que você tenha uma planilha de equipe que acompanhe o progresso de todos. A tabela continua quebrando porque pessoas diferentes estão inserindo valores diferentes. Você pode continuar resolvendo todos esses problemas um a um, ou pode configurar sua tabela para agilizar a entrada de dados de modo que todos estejam na mesma página. A abordagem da fonte dos erros em seus dados lhe poupará muito tempo a longo prazo.
- **Não analisar o sistema antes da limpeza dos dados:** Se quisermos limpar nossos dados e evitar erros futuros, precisamos entender a causa raiz de seus dados sujos. Imagine que você é um mecânico de automóveis. Você encontraria a causa do problema antes de começar a consertar o carro, certo? O mesmo vale para os dados. Primeiro, você descobre de onde vêm os erros. Talvez seja devido a um erro de entrada de dados, não ter sido feita uma verificação ortográfica, falta de formatos, ou de duplicatas. Então, quando você entender de onde vêm os dados ruins, você pode controlá-los e manter seus dados limpos.
- **Não fazer backup de seus dados antes da limpeza dos dados:** É sempre bom ser pró-ativo e criar seu backup de dados antes de iniciar a limpeza de seus dados. Se seu programa falhar, ou se suas alterações causarem um problema em seu conjunto de dados, você pode sempre voltar à versão salva e restaurá-la. O simples procedimento de backup de seus dados pode lhe poupar horas de trabalho - e o mais importante, uma dor de cabeça.
- **Não contabilizando a limpeza de dados em seus prazos/processos:** Todas as coisas boas levam tempo, e isso inclui a limpeza de dados. É importante ter isso em mente ao passar por seu processo e ao olhar para seus prazos. Quando você reserva tempo para a limpeza dos dados, isso ajuda a obter uma estimativa mais precisa dos ETAs para as partes interessadas, e pode ajudá-lo a saber quando solicitar um ETA ajustado.

## Recursos adicionais

Consulte estas listas "top ten" para limpeza de dados no Microsoft Excel e Google Sheets para ajudá-lo a evitar os erros mais comuns:

- [As dez melhores maneiras de limpar seus dados](https://support.microsoft.com/en-us/office/top-ten-ways-to-clean-your-data-2844b620-677c-47a7-ac3e-c2e157d1db19): reveja um guia ordenado de limpeza de dados no Microsoft Excel.
- [10 dicas do Google Workspace para limpar dados](https://support.google.com/a/users/answer/9604139?hl=en#zippy=): aprenda as melhores práticas de limpeza de dados no Google Sheets.

### Atividade prática: Limpeza de Dados em Planilhas

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/5fe2aadf-8159-459b-93f3-f69c9e940ba7image1.png?expiry=1705708800000&hmac=l-_0BqRY785lzwymJnx_-2qQFS4ahNziy8ShSyM-wu8

**Visão geral da atividade**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/5fe2aadf-8159-459b-93f3-f69c9e940ba7image2.png?expiry=1705708800000&hmac=2ZR6Cl5xOx2OqSGlrD6sk4uXW7jmmsbU9h0GCA7BQEI

Você aprendeu sobre os dados de limpeza e sua importância para atender aos bons padrões da ciência dos dados. Nesta atividade, você fará uma limpeza de dados com planilhas, depois transporá os dados.

Ao concluir esta atividade, você poderá realizar alguns métodos básicos de limpeza em planilhas. Isto lhe permitirá limpar e transpor dados, o que é importante para tornar os dados mais específicos e precisos em sua carreira como analista de dados.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/5fe2aadf-8159-459b-93f3-f69c9e940ba7image3.png?expiry=1705708800000&hmac=9TdJusVCvKLUcb7x9IvHmEprbMkrDfdUH1VvT3pOj5M

**O que você vai precisar**

Para começar, primeiro acesse a planilha de dados.

Para usar a planilha deste item do curso, clique no link abaixo e selecione “Usar modelo”.

Link para a planilha de dados: [Limpeza com planilhas](https://docs.google.com/spreadsheets/d/1PkAbgXC7C1g2dKzCCpaHBcAyPw-s1z7iUxIEJ0cCYWQ/template/preview)

### Atividade Prática: Limpeza de dados em planilhas

- Parabéns por concluir esta atividade prática! Nesta atividade, você limpou e transpôs os dados em uma planilha. Uma boa resposta incluiria que a limpeza é um passo fundamental na ciência dos dados, pois aumenta muito a integridade dos dados.
- Bons resultados da ciência dos dados dependem muito da confiabilidade dos dados. Os analistas de dados limpam os dados para torná-los mais precisos e confiáveis. Isto é importante para garantir que os projetos em que você irá trabalhar como analista de dados sejam concluídos corretamente.

## **Teste seus conhecimentos sobre técnicas de limpeza de dados**

**Tipo:** Teste para praticar

**Duração:** 6 min

**Pontuação Total Disponível:** 3 pontos

**Sua Nota:** 100% (Aprovado com 80% ou superior)

### Detalhes das Perguntas e Respostas:

1. **Pergunta 1:**
    
    *"Preencha a lacuna: Cada banco de dados tem sua própria formatação, o que pode fazer com que os dados pareçam inconsistentes. Os analistas de dados utilizam a ferramenta _____ para criar uma aparência visual limpa e consistente para as planilhas."*
    
    - **Resposta Correta:** Formatos Claros
    - **Pontuação:** 1 / 1 ponto
2. **Pergunta 2:**
    
    *"Qual é o processo de combinar dois ou mais conjuntos de dados em um único conjunto de dados?"*
    
    - **Resposta Correta:** Fusão de Dados
    - **Pontuação:** 1 / 1 ponto
3. **Pergunta 3:**
    
    *"Preencha a lacuna: Em análise de dados, _____ descreve como dois ou mais conjuntos de dados são capazes de trabalhar em conjunto."*
    
    - **Resposta Correta:** Compatibilidade
    - **Pontuação:** 1 / 1 ponto

---

# Dados de limpeza em planilhas

### Otimizar o processo e limpeza de dados

- =LEFT
- =RIGHT
- =MID
- =CONCATENATE
- =TRIM

## Automação do fluxo de trabalho

Nesta leitura, você aprenderá sobre a automação do fluxo de trabalho e como ela pode ajudá-lo a trabalhar mais rapidamente e com mais eficiência. Basicamente, a automação do fluxo de trabalho é o processo de automatização de partes de seu trabalho. Isso pode significar a criação de um gatilho de evento que envia uma notificação quando um sistema é atualizado. Ou pode significar a automatização de partes do processo de limpeza de dados. Como você provavelmente pode imaginar, automatizar diferentes partes de seu trabalho pode economizar toneladas de tempo, aumentar a produtividade e lhe dar mais largura de banda para se concentrar em outros aspectos importantes do trabalho.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/rgrPvRbvSxCKz70W74sQQw_3180a771074745fea045df7ce7340d86_Screen-Shot-2021-01-25-at-1.37.53-PM.png?expiry=1705708800000&hmac=z4Ac7FXl06FK8mTO5DIQf5IaodPDuR_TAKqDNlj7LUk

## O que pode ser automatizado?

A automação parece incrível, não é mesmo? Mas por mais conveniente que seja, ainda há algumas partes do trabalho que não podem ser automatizadas. Vamos dar uma olhada em algumas coisas que podemos automatizar e algumas coisas que não podemos.

| Tarefa | Pode ser automatizado? | Por quê? |
| --- | --- | --- |
| Comunicando com sua equipe e partes interessadas | Não | A comunicação é a chave para entender as necessidades de sua equipe e das partes interessadas à medida que você completa as tarefas em que está trabalhando. Não há substituto para as comunicações de pessoa para pessoa. |
| Apresentando suas descobertas | Não | Apresentar seus dados é uma grande parte do seu trabalho como analista de dados. Tornar os dados acessíveis e compreensíveis às partes interessadas e criar visualizações de dados não pode ser automatizado pelas mesmas razões que as comunicações não podem ser automatizadas. |
| Preparação e limpeza de dados | Parcialmente | Algumas tarefas na preparação e limpeza de dados podem ser automatizadas através da configuração de processos específicos, como o uso de um script de programação para detectar automaticamente os valores ausentes. |
| Exploração de dados | Parcialmente | Às vezes, a melhor maneira de entender os dados é vê-los. Por sorte, há muitas ferramentas disponíveis que podem ajudar a automatizar o processo de visualização de dados. Estas ferramentas podem acelerar o processo de visualização e compreensão dos dados, mas a exploração em si ainda precisa ser feita por um analista de dados. |
| Modelagem dos dados | Sim | A modelagem de dados é um processo difícil que envolve muitos fatores diferentes; felizmente, existem ferramentas que podem automatizar completamente as diferentes etapas. |

## Mais sobre a automatização da limpeza de dados

Uma das formas mais importantes de agilizar a limpeza de seus dados é limpar os dados onde eles vivem. Isto beneficiará toda a sua equipe, e também significa que você não precisa repetir o processo uma e outra vez. Por exemplo, você poderia criar um script de programação que contasse o número de palavras em cada arquivo de planilha armazenado em uma pasta específica. Usar ferramentas que podem ser usadas onde seus dados são armazenados significa que você não precisa repetir seus passos de limpeza, economizando tempo e energia para você e sua equipe.

## Mais recursos

Existem muitas ferramentas por aí que podem ajudar a automatizar seus processos, e essas ferramentas estão melhorando o tempo todo. Aqui estão alguns artigos ou blogs que você pode conferir se quiser saber mais sobre automação de fluxo de trabalho e as diferentes ferramentas que existem por aí para você usar:

- Towards Data Science’s **[automatização da análise de dados científicos](https://towardsdatascience.com/automating-scientific-data-analysis-part-1-c9979cd0817e)**
- MIT News’ **[automatizando a análise de Big-Data](https://news.mit.edu/2016/automating-big-data-analysis-1021)**
- TechnologyAdvice’s **[10 das Melhores Opções para Software de Automação do Fluxo de Trabalho](https://technologyadvice.com/blog/information-technology/top-10-workflow-automation-software/)**

Como analista de dados, a automação pode economizar muito tempo e energia e liberá-lo para se concentrar mais em outras partes do seu projeto. Quanto mais análise você fizer, mais maneiras você encontrará de tornar seus processos mais simples e mais racionalizados.

### Diferentes perspectivas de dados

| Products | Price | Client | Client Code | Orders | Total |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 51993Masc | $9.98 | Candy's Beauty Supply | PINNC980 | 191 | $1,906.18 |  | LashX Mascara |
| 49631Foun | $14.49 | Rockland's | ARLVA283 | 152 | $2,202.48 |  | BeautifulU Foundation |
| 42292Glos | $6.74 | Rudiger Pharmacy | CHEMD763 | 758 | $5,108.92 |  | Rosy Lip Gloss |
| 86661Shad | $5.71 | Elizabethtown Supply | COLSC761 | 308 | $1,758.68 |  | Darkest Eye Shadow |
| 49541Eyel | $7.94 | Rockland's | ARLVA425 | 50 | $397.00 |  | Pinpoint Eyeliner |
| 58337Foun | $13.57 | Candy's Beauty Supply | PINNC939 | 673 | $9,132.61 |  | PerfectU Foundation |
| 40014Masc | $8.46 | Elizabethtown Supply | COLSC649 | 94 | $795.24 |  | SmoothU Mascara |
| 86139Lips | $5.55 | Candy's Beauty Supply | PINNC496 | 299 | $1,659.45 |  | Peachy Lipstick |
| 69601Exfo | $11.05 | Rockland's | ARLVA851 | 850 | $9,392.50 |  | HealthyU Exfoliator |

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/70a130aa-4ce0-4455-ba24-adb227d409f5/62352425-5e99-46f4-8663-4a371cbc39a2/Untitled.png)

## **Teste seus conhecimentos sobre dados de limpeza em planilhas**

**Nota recebida:** 100%

**Para ser aprovado:** 80% ou superior

1. **Pergunta 1:**
    
    *Descrever a relação entre uma string de texto e uma substring.*
    
    - **Resposta Correta:** Uma string de texto é um grupo de caracteres dentro de uma célula. Uma substring é um subconjunto menor dessa cadeia de texto.
    - **Pontuação:** 1 / 1 ponto
2. **Pergunta 2:**
    
    *Um analista de dados usa a função COUNTIF para contar o número de vezes que um valor inferior a 5 ocorre entre as células da planilha A2 até A100. Qual é a sintaxe correta?*
    
    - **Resposta Correta:** =COUNTIF(A2:A100,"<5")
    - **Pontuação:** 1 / 1 ponto
3. **Pergunta 3:**
    
    _Preencha a lacuna: Para remover os espaços de liderança, de fuga e de repetição nos dados, os analistas usam a função ____. _
    
    - **Resposta Correta:** TRIM
    - **Pontuação:** 1 / 1 ponto

---

# Desafio Semanal 2