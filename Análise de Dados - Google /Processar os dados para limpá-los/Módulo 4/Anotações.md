# Módulo 4 - Verificar e gerar relatórios dos resultados

---

# Limpeza Manual dos Dados

- Verification

A process to confirm that a data-cleaning erffort was well-executed and the resulting data is accurate and reliable

- Open communication
- Changelog - versions
- See the big picture when verifying data-cleaning
    - Consider the business problem
    - Consider the goal
    - Consider the data
- Do the numbers make sense?
- The final step of data-cleaning
    
    Remove duplicates
    
    Find and replace
    
    COUNTA:  counts the total number of values within a specified range
    
    CASE statement
    
    ```sql
    SELECT
    	customer_id
    	CASE
    		WHEN first_name = 'Tnoy' THEN 'Tony'
    		ELSE first_name = 'Tmo' THEN 'Tom'
    		END AS cleaned_name
    FROM
    	customer_data.customer_name
    
    ```
    

## Como verificar a limpeza de dados: Uma lista de verificação

Nesse artigo, você encontrará uma lista de verificação dos problemas comuns; consulte-a durante a verificação da limpeza de dados, independentemente da ferramenta que usar. Quando se trata da verificação da limpeza de dados, não há uma abordagem ou lista de verificação únicas que possam ser aplicadas universalmente a todos os projetos. Cada projeto possui seus próprios requisitos de organização e dados que levam a uma lista única de coisas que você deve conferir durante a verificação.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/_GTroK8bT9Ck66CvGy_QjQ_178378e08c49411dbcd1254727c7b9e3_Screen-Shot-2021-03-05-at-1.06.55-PM.png?expiry=1705968000000&hmac=TCyZEJ_gu7T2QEyH3BQr3dqDXIqych9R1tVNH7wnV6o

Lembre-se: conforme for obtendo mais dados ou entender melhor as metas do projeto, você poderá querer voltar a algumas ou todas essas etapas.

## Corrigir os problemas mais comuns

Certifique-se de ter identificado os problemas mais comuns e corrija-os, incluindo:

- **Origem dos erros.** Você usou as ferramentas e funções certas para encontrar a origem dos erros no seu conjunto de dados?
- **Dados nulos.** Você procurou por NULOS com filtros e formatação condicional?
- **Palavras digitadas incorretamente.** Você localizou todas as palavras com erro de digitação?
- **Números digitados incorretamente.** Você verificou se os dados numéricos foram digitados corretamente?
- **Caracteres e espaços extras.** Você excluiu os caracteres ou espaços extras com a função **TRIM**?
- **Duplicatas.** Você excluiu as duplicatas nas planilhas ou SQL com as funções **Remove duplicates** ou **DISTINCT**, respectivamente?
- **Tipos de dados incompatíveis.** Você verificou se os dados numéricos, de datas e strings foram convertidos corretamente?
- **Strings desorganizadas (inconsistentes).** Você verificou se todas as strings são consistentes e pertinentes?
- **Formatos de dados desorganizados (inconsistentes).** Você formatou as datas de forma consistente no conjunto de dados?
- **Identificações (colunas) variáveis incorretas.** Você nomeou suas colunas de forma adequada?
- **Dados truncados.** Você verificou se há dados ausentes ou truncados que exigem correção?
- **Lógica nos negócios.** Com base em seu conhecimento nos negócios, você verificou se os dados são coerentes?

## Revisar a meta do seu projeto

Depois de concluídas as tarefas de limpeza dos dados, revise a meta do seu projeto e verifique se seus dados continuam alinhados à meta. Esse é um processo contínuo que deverá ser feito durante todo o projeto; há, no entanto, três etapas para levar em consideração ao refletir a respeito:

- Confirmar o problema dos negócios
- Confirmar a meta do projeto
- Verificar se os dados têm potencial para solucionar o problema e estão alinhados à meta

### Avaliação

## Parabéns! Você foi aprovado!

### Nota recebida: 100%

**Para ser aprovado:** 80% ou superior

### Perguntas e Respostas:

### Pergunta 1: Processo de Verificação de Limpeza de Dados

- **Tarefas de Verificação:**
    - **Examinar a Verossimilhança e Adequação dos Dados:** Verificar se os dados são apropriados e realistas para o projeto.
    - **Corrigir Manualmente os Erros Identificados:** Revisão e correção manual de erros encontrados nos dados.
    - **Revisão da Iniciativa de Limpeza de Dados:** Avaliação crítica da estratégia de limpeza de dados adotada.

### Pergunta 2: Função para Contagem em Planilhas

- **Resposta Correta:** COUNTA
    - **Função COUNTA:** Usada para contar o total de valores em um intervalo específico de uma planilha.

### Pergunta 3: Ferramentas Adicionais para Limpeza de Dados

- **Ferramentas para Limpeza:**
    - **Remover Duplicatas:** Eliminação de dados duplicados para garantir a unicidade.
    - **Localizar e Substituir:** Utilizado para corrigir erros consistentes ou padrões em dados.

### Pergunta 4: Corrigindo Erros de Digitação com CASE

- **Uso da Instrução CASE:**
    - **Localização:** Como uma cláusula SELECT em consultas SQL.
    - **Funcionalidade:** Avalia condições e retorna um valor correspondente, útil para corrigir erros de digitação.

---

# Documentação dos resultados e o processo de limpeza

### Registro das mudanças da limpeza

- Recover data-cleaning errors
- Inform other users of changes
- Determine quality of data

<aside>
💡 O instrutor afirmou que os dois primeiros benefícios da documentação — 1) lembrar os erros que foram limpos e 2) informar os outros sobre as alterações — pressupõem que os erros de dados *não podem* ser corrigidos. Ela acrescentou que, quando os erros de dados podem ser corrigidos, a documentação precisa registrar como os dados foram corrigidos. A documentação de limpeza de dados é importante em ambos os casos.

</aside>

- Changelog

A file containing a chronologically ordered list of modifications made to a project

## Incorporação dos log de mudanças

O que engenheiros, autores e analistas de dados têm em comum? A mudança.

Os engenheiros usam **Ordens de Alteração de Engenharia** (ECO, na sigla em inglês) para acompanhar os detalhes de projeto do novo produto e as mudanças propostas aos produtos atuais. Os autores usam **históricos de revisão do documento** para acompanhar as mudanças nas edições e fluxo do documento. Os analistas de dados, por sua vez, usam **log de mudanças** para acompanhar a limpeza e a transformação dos dados.

## O controle automatizado de versão orienta você em grande parte do caminho

A maioria dos aplicativos de software contam com um tipo de monitoramento de histórico integrado. No Planilhas Google, por exemplo, é possível verificar o histórico de versão da planilha toda ou de uma única célula, bem como retornar a uma versão anterior. No Microsoft Excel, você pode usar um recurso chamado **Controlar alterações**. Já no BigQuery, você tem acesso às mudanças feitas pelo histórico.

Veja como é na prática:

| Planilhas Google | 1. Clique com o botão direito na célula e selecione "Exibir histórico de edição". 2. Clique nas setas para a esquerda (<) ou direita (>) para ir para frente ou para trás no histórico, conforme necessário. |
| --- | --- |
| Microsoft Excel | 1. Se o recurso de Controlar Alterações estiver habilitado na planilha: clique em "Revisão". 2. Em Controlar alterações, clique na opção "Aceitar/Rejeitar alterações" para aceitar ou rejeitar as mudanças feitas. |
| BigQuery | Abra uma versão anterior (sem voltar para ela) e compare-a à versão atual para ver o que mudou. |

## Os logs de mudanças vão a fundo com você

O **log de mudanças** pode aproveitar seu histórico automatizado de versão, dando a você um registro mais detalhado do seu trabalho. É nele que os analistas de dados registram todas as alterações feitas nos dados. Veja de outro ângulo. Os históricos de versão registram *o que* foi feito na alteração de um dado do projeto, mas não indicam o *porquê*. Os logs de mudanças são mais do que úteis para nos ajudar a entender os motivos por trás das alterações. Eles não têm um formato definido; se você quiser, pode até mesmo inserir suas informações em um documento em branco. Se, no entanto, estiver usando um log de mudanças compartilhado, o melhor é definir com outros analistas de dados o formato de todas as entradas no registro.

Normalmente, o log de mudanças registra o seguinte tipo de informação:

- Dados, arquivo, fórmula, consulta ou outro componente modificado
- Descrição do que foi alterado
- Data da alteração
- Responsável pela mudança
- Responsável pela aprovação da mudança
- Número de versão
- Justificativa para a alteração

Digamos que você alterou uma fórmula de uma planilha, pois viu em outro relatório e quis que seus dados fossem coerentes e consistentes. Se, em outro momento, você descobrisse que o relatório usava na verdade a fórmula errada, o histórico automatizado de versão poderia ajudar você a *desfazer* a alteração. Mas, se também registrou a justificativa para a alteração em um log de mudanças, você poderia informar os criadores do relatório quanto à fórmula incorreta. Se a mudança foi feita há um tempo atrás, pode ser que não se lembre a quem se dirigir. Felizmente, seu log de mudanças poderia dar essa informação para você! Ao dar sequência, você garantiria a integridade dos dados fora do projeto e demonstraria sua integridade pessoal como alguém em que pode ser confiado com dados. Esse é o potencial de um log de mudanças!

Por fim, o log de mudanças é importante no caso de várias alterações terem sido feitas em uma planilha ou consulta. Imagine a situação: um analista fez quatro mudanças e ele quer reverter a mudança nº 2. Ao invés de clicar três vezes no recurso para desfazer a mudança nº 2 (e acabar perdendo as mudanças nº 3 e 4), o analista para desfazer apenas a mudança nº 2 e manter todas as demais. Nosso exemplo foi de apenas quatro alterações, mas pense na importância desse log de mudanças se houvessem centenas de alterações para controlar.

## O que também acontece na prática

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/DhGJileXTX-RiYpXly1_oQ_2092eff083f94df19afe12a84ba42c2a_Screen-Shot-2021-03-05-at-1.13.05-PM.png?expiry=1705968000000&hmac=ea7qmJ3r2oyUIbJgJw9eo0qYfmiYl0oEDlfu6opUmBc

Provavelmente, o analista júnior só precisa saber o acima com uma exceção. Se o analista está fazendo alterações a uma consulta SQL que já existe e é compartilhada na empresa, muito provavelmente ela usa o que chamamos de **sistema de controle de versão,** como uma consulta que extrai a receita diária para criar um painel para a gerência sênior.

Veja como um sistema de controle de versão afeta uma alteração em uma consulta:

1. Uma empresa conta com versões oficiais de consultas importantes em seu **sistema de controle de versão**.
2. O analista verifica se a versão mais recente da consulta é aquela que será modificada, o que chamamos de **sincronização.**
3. O analista faz uma alteração na consulta.
4. O analista pode pedir que outra pessoa revise a alteração. A isso damos o nome de **revisão de código**, que pode ser realizado informal ou formalmente. Uma revisão informal pode ser tão simples quanto pedir a um analista sênior para dar uma olhada na alteração.
5. Assim que o revisor dá sua aprovação, o analista envia a versão atualizada da consulta a um repositório no sistema de controle de versão da empresa, o que chamamos de **alocação de código**. Uma prática recomendada é documentar exatamente qual mudança foi feita e por que na área de comentários. Voltando ao nosso exemplo de uma consulta que extrai a receita diária, vejamos um possível comentário: *Receita atualizada de modo a incluir a receita oriunda do novo produto, Calypso.*
6. Após o **envio** da alteração, todos da empresa poderão acessar e usar a nova consulta ao **sincronizar** com as consultas mais recentes armazenadas no sistema de controle de versão.
7. Se a consulta apresenta um problema ou as necessidades da empresa sofrem uma mudança, o analista pode ***desfazer*** a alteração da consulta pelo sistema de controle de versão. O analista pode conferir a lista cronológica de todas as alterações feitas na consulta e o autor de cada mudança. Após encontrar sua própria alteração, o analista pode **reverter** para a versão anterior.
8. A consulta volta ao que era antes do analista fazer a alteração, e todos da empresa conseguem ter acesso a essa mesma consulta também.

### Autorreflexão

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage1.png?expiry=1705968000000&hmac=OhZWGK8Y7MWNvWnUUsJkfrzNCqWfX6QDGfqPt4v2wqA

**Visão geral**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage2.png?expiry=1705968000000&hmac=XhUPICcBCoKwa2yUQf5SEUdP8JEgDJqJVImPnpKAD9I

Agora que você já aprendeu sobre a importância de acompanhar as mudanças em sua análise de dados, faça uma pequena pausa e registre o que está aprendendo. Nesta autorreflexão, procure considerar seus pensamentos sobre os logs de mudanças e responder a algumas perguntas breves.

Esta autorreflexão vai ajudar você a desenvolver insights sobre seu próprio aprendizado e a se preparar para incorporar os logs de mudanças em seus procedimentos de limpezas de dados. Ao responder a perguntas (e fazer suas próprias perguntas), você considerará conceitos, práticas e princípios úteis para refinar sua compreensão e reforçar seu aprendizado. Você trabalhou duro, então não deixe de aproveitá-lo ao máximo: Essa reflexão ajudará a fixar o seu conhecimento!

**A importância dos logs de mudanças**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage2.png?expiry=1705968000000&hmac=XhUPICcBCoKwa2yUQf5SEUdP8JEgDJqJVImPnpKAD9I

Nas atividades anteriores, você analisou os diferentes tipos de perguntas a se fazer antes de explorar os dados, a importância de se fazer uma pré-limpeza de dados, as funções básicas do SQL, como limpar dados em planilhas e muito mais. Como analista de dados júnior, a maioria dos seus projetos compreenderão essas atividades. Como já viu, cada uma das tarefas acompanha um processo complexo. Dessa forma, é fundamental manter registros consistentes e precisos para se manter a par de tudo.

Um **log de mudanças** nada mais é do que um documento usado para registrar as mudanças consideráveis de um projeto durante sua vigência, em todas as atividades. Em geral, esse documento é organizado, para que as mudanças registradas sejam listadas em ordem cronológica para todas as versões do projeto.

A maior vantagem de usá-los é que colaboradores e usuários conectados ao projeto têm acesso a uma lista específica com quais alterações importantes foram feitas, quando foram feitas e, por vezes, em qual versão foram lançadas. O log de mudanças é uma ferramenta indispensável para comunicar o progresso do projeto aos co-profissionais, à gestão e às partes interessadas.

**Práticas recomendadas para os logs de mudanças**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage3.png?expiry=1705968000000&hmac=9Jpwnhewfxh_tDwVVp-DxjC2r1RUK6EMoLzS4BRuCCY

A escolha do formato de um log de mudanças de um projeto pessoal é livre. Quando se trata, porém, de uma situação profissional e quando se está colaborando com outras pessoas, a legibilidade é importante. Esses princípios orientadores ajudam a tornar um log de mudanças acessível às outras pessoas:

- eles são desenvolvidos para pessoas, e não máquinas; portanto, elabore-o de forma legível.
- Cada versão deve ter seu próprio lançamento.
- Cada mudança, sua própria linha.

Agrupe os mesmos tipos de alterações. Vejamos o exemplo: *Fixo* deve ser agrupado de forma isolada de *Adicionado*.

As versões devem seguir uma ordem cronológica, a começar com a mais recente.

A data de lançamento de cada versão deve ser indicada.

Todas as mudanças de cada categoria devem ser agrupadas juntas. Os tipos de alterações se classificam, normalmente, em uma das categorias abaixo:

Adicionado: novos recursos incorporados

Alterado: mudanças na funcionalidade já existente

Obsoleto: recursos prestes a serem removidos

Removido: recursos que foram removidos

Corrigido: correções de erros

Segurança: mitigação de vulnerabilidades

**Analise um exemplo de log de mudanças**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage2.png?expiry=1705968000000&hmac=XhUPICcBCoKwa2yUQf5SEUdP8JEgDJqJVImPnpKAD9I

Avalie a figura abaixo, que traz um exemplo de um log de mudanças. Observação: o exemplo a seguir é redigido em [Markdown](https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/basic-writing-and-formatting-syntax), pois é comum manter os log de mudanças como um arquivo Leiame em um repositório de código.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage4.png?expiry=1705968000000&hmac=cN6EwDPEq0NwHgKqENgtQ-ZfR4ooYHqyBWJYawpPB8E

```markdown
# Changelog
This file contains the notable changes to the project

Version 1.0.0 (02-23-2019)
## New
    - Added column classifiers (Date, Time, PerUnitCost, TotalCost, etc. )
    - Added Column “AveCost” to track average item cost

## Changes 
    - Changed date format to MM-DD-YYYY
    - Removal of whitespace (cosmetic)

## Fixes
    - Fixed misalignment in Column "TotalCost" where some rows did not match with correct dates
    - Fixed SUM to run over entire column instead of partial
```

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage5.png?expiry=1705968000000&hmac=PDpYHcYejEFqREU-CFnWgGp-NwcGQnJ_3SHXjEHbYw0

**O que registrar em um log de mudanças**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage2.png?expiry=1705968000000&hmac=XhUPICcBCoKwa2yUQf5SEUdP8JEgDJqJVImPnpKAD9I

Agora que você conhece o exemplo, considere quais alterações você deve registrar em um log de mudanças. O primeiro ponto é: registre as diversas alterações, adições e correções, que foram discutidas acima. Ordene-as com marcadores de pontos ou numéricos, com uma alteração por linha. Agrupe as mudanças semelhantes com um identificador que descreva a mudança imediatamente acima dela.

Use diferentes números de versão para cada etapa concluída no projeto. Em cada versão, coloque as alterações registradas que foram feitas desde a versão anterior (etapa). Em geral, as datas não são importantes para cada mudança, embora sejam recomendadas para cada versão.

Em um próximo curso, você terá a oportunidade de concluir um projeto de conclusão de curso. Será uma chance e tanto de demonstrar sua habilidade de organizar um projeto como um analista de dados profissional ao manter seu próprio log de mudanças.

Para isso, você pode usar um arquivo de texto simples ou planilha e incluir seu log de mudanças com a descrição do projeto. Ajudarei você a se manter organizado e colaborar com outras pessoas. Lembre-se disso ao chegar ao projeto de conclusão do curso que participará em breve. Não tenha receio de consultar novamente a lição se tiver alguma dúvida.

**Reflexão**

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/835f7832-1d05-4b12-a3a3-0b6672c2644aimage2.png?expiry=1705968000000&hmac=XhUPICcBCoKwa2yUQf5SEUdP8JEgDJqJVImPnpKAD9I

Pense no que viu sobre os logs de mudanças durante essa reflexão:

- O que torna um log de mudanças ideal?
- Como decidir se uma mudança é importante o suficiente para ser incluída no log de mudanças?

Agora, responda cada uma dessas perguntas com duas ou três frases (40 a 60 palavras). Digite sua resposta na caixa de texto abaixo.

R: 

- Um log de mudanças ideal é claro e cronologicamente organizado, detalhando alterações significativas de forma acessível; uma mudança é importante para o log se impacta significativamente o funcionamento, segurança ou usabilidade do projeto, ou introduz novidades ou correções relevantes.

Correto

O log de mudanças deve captar uma das mudanças abaixo no conjunto de dados durante a limpeza:

- Dados processados ausentes
- Formatação alterada
- Valores ou casos dos dados alterados

## Por que a documentação é tão importante?

- Data Cleaning Documentation

“I removed duplicate instance, which decreased the number of rows from 33 to 32, and lowered the membership total by $500.”

- Feedback e Limpeza

## Funções avançadas para uma rápida limpeza de dados

Nesse artigo, você aprenderá algumas funções avançadas que ajudam você a acelerar o processo de limpeza dos dados em planilhas. Confira abaixo uma tabela com o resumo das três funções e o que cada uma vez:

| Função | Sintaxe
(Planilhas Google) | Opções de menu
(Microsoft Excel) | Principal uso |
| --- | --- | --- | --- |
| IMPORTRANGE | =IMPORTRANGE(spreadsheet_url, range_string) | Colar link (copiar os dados primeiro) | Importa (cola) dados de uma planilha para outra e os mantém atualizados automaticamente |
| QUERY | Sintaxe: =QUERY(Planilha e Intervalo, "Select *") | Dados > De outras fontes > Da consulta Microsoft | Permite que instruções falsas do SQL (do tipo SQL) ou um assistente importem os dados. |
| FILTER | =FILTER(intervalo, condição1 [condição2, ...]) | Filtrar(condições por coluna) | Exibe somente os dados que atendem às condições especificadas. |

## Como manter os dados limpos e sincronizados com uma fonte

Com a função **[IMPORTRANGE](https://support.google.com/docs/answer/3093340?hl=en)** do Planilhas Google e o recurso **[Paste Link](https://professor-excel.com/how-to-paste-cell-links/)** (opção Paste Special no Microsoft Excel), você pode inserir dados de uma planilha para outra. Usá-los com uma grande quantidade de dados é mais eficiente do que copiar e colar manualmente. Além disso, diminuem a chance de que surjam erros ao copiar e colar dados incorretos, e são úteis durante a limpeza dos dados, pois você pode escolher a dedo os dados que quer analisar e deixar de lado aqueles que sejam irrelevantes para seu projeto. É, basicamente, como tirar tudo aquilo que atrapalhe em seus dados, para que você se concentre no que é mais importante para resolver o problema. Esta funcionalidade também é útil no monitoramento diário dos dados; com ela, é possível criar uma planilha de acompanhamento para compartilhar dados relevantes com outras pessoas. Os dados são sincronizados com a fonte de dados. Dessa forma, quando os dados forem atualizados no arquivo de origem, o dado monitorado também será atualizado.

Ao usar a função IMPORTRANGE no Planilhas Google, os dados podem ser extraídos de outra planilha; é necessário, no entanto, permitir o acesso à planilha na primeira vez que os dados são extraídos. **A URL mostrada abaixo é apenas para fins de sintaxe. Não insira-o em sua planilha.** Faça a substituição por uma URL para uma planilha que você criou para poder controlar o acesso a ela, clicando no botão Permitir acesso.

!https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/MIPP12QFSu6Dz9dkBXruHQ_7eae892291704199ac5e03c99b75a5f1_allow_access_Importrange.png?expiry=1705968000000&hmac=moB7S_6HNQlXHqbGFi4Ivye7tj-GS-rIoPBu_g8iRC0

Consulte a [página de Suporte do Google sobre a função IMPORTRANGE](https://support.google.com/docs/answer/3093340?hl=en) para obter a sintaxe e o uso de amostra.

### Exemplo de como usar a função IMPORTRANGE

Um analista que está monitorando uma campanha de arrecadação de fundos precisa acompanhar e garantir a distribuição dos fundos correspondentes. Ele usa a função **IMPORTRANGE** para extrair as transações correspondentes em uma planilha com todas as doações individuais, o que permite a ele determinar quais doações são elegíveis aos fundos correspondentes que ainda precisam ser processados. Como o número total de transações correspondentes cresce a cada dia, ele só precisa alterar o intervalo usado pela função para importar os dados mais atualizados.

Na terça-feira, ele usou a fórmula abaixo para importar os nomes dos doadores e os valores correspondentes:

=IMPORTRANGE(“https://docs.google.com/spreadsheets/d/1cOsHnBDzm9tBb8Hk_aLYfq3-o5FZ6DguPYRJ57992_Y”, “Matched Funds!A1:B4001”)

Na quarta-feira, outras 500 transações foram processadas. Ele aumenta o intervalo usado em 500 para incluir facilmente as últimas transações ao importar os dados na planilha do doador individual:

=IMPORTRANGE(“https://docs.google.com/spreadsheets/d/1cOsHnBDzm9tBb8Hk_aLYfq3-o5FZ6DguPYRJ57992_Y”, “Matched Funds!A1:B4501”)

**Observação: Os exemplos acima são meramente ilustrativos. Não os copie e cole em sua planilha. Para tentar você mesmo, é necessário substituir seu URL (e o nome da planilha, no caso de haver várias abas) junto com o intervalo de células da planilha que foram preenchidas com os dados.**

## Como extrair dados de outras fontes

A função **[QUERY](https://support.google.com/docs/answer/3093343?hl=en)** também é útil quando se quer extrair dados de outra planilha. O recurso do tipo SQL da função **QUERY** consegue extrair dados específicos de uma planilha. Em se tratando de quantidades maiores de dados, usar a QUERY função é muito mais rápido do que filtrar os dados manualmente, o que fica ainda mais evidente quando se precisa repetir filtros. Você pode gerar, por exemplo, uma lista de todos os clientes que compraram produtos da sua empresa em determinado mês com um filtro manual. Se quiser descobrir o crescimento mensal de clientes, você precisará copiar os dados filtrados em uma nova planilha, filtrar os dados de vendas durante o mês seguinte e copiar os resultados para análise. Com a função **QUERY**, você obtém todos os dados dos meses sem precisar alterar o conjunto de dados original ou copiar os resultados.

A sintaxe da função **QUERY** é similar à função **IMPORTRANGE.** Você insere a planilha por nome e o intervalo de dados em que deseja fazer a consulta, e usa o comando **SELECT** do SQL para selecionar colunas específicas. Você também pode adicionar critérios específicos após a instrução **SELECT**, basta incluir uma instrução **WHERE**. Mas não se esqueça de que todos os códigos SQL usados devem ser colocados entre aspas!

O Planilhas Google roda a Linguagem de consulta da API de visualização do Google nos dados. As planilhas do Excel usam um assistente de consulta para orientar você pelas etapas para conectar a uma fonte de dados e selecionar as tabelas. Independentemente do caso, você tem a certeza de que os dados são importados, verificados e limpos com base no critério da consulta.

### Exemplos de como usar a função QUERY

Consulte a [página de Suporte do Google sobre a função QUERY](https://support.google.com/docs/answer/3093343?hl=en) com a sintaxe e uso de amostra, além de exemplos que você pode baixar em uma planilha do Google.

Link para copiar a planilha: [exemplos da função QUERY](https://docs.google.com/spreadsheets/d/1815H5TCe91LLT6tD6FmxMHmeJAAkr4o5Q6rNpV6xiFk/copy)

### Solução prática

Os analistas usam o SQL para extrair um conjunto de dados específico em uma planilha. Eles usam a função **QUERY** para criar várias abas (visualizações) do conjunto em questão. Uma aba, por exemplo, pode incluir todos os dados de vendas de determinado período, enquanto outra aba inclui todos os dados de vendas de uma região específica. A solução mostra como o SQL e as planilhas funcionam bem juntos.

## Como filtrar os dados para obter o que procura

A função **[FILTER](https://support.google.com/docs/answer/3093197?hl=en)** é totalmente interna em uma planilha e não exige o uso de uma linguagem de consulta. Com ela, você consegue visualizar somente as linhas (ou colunas) nos dados de origem que atendem às condições especificadas. A função permite pré-filtrar os dados antes de analisá-los.

Ela pode rodar de forma mais rápida do que a função **QUERY**. Lembre-se: a função **QUERY** pode ser combinada a outras funções em casos de cálculos mais complexos. A função **QUERY** pode ser usada, por exemplo, com outras funções, como **SUM** e **COUNT**, para sintetizar os dados; já com a função **FILTER**, isso não é possível.

### Exemplo de como usar a função FILTER

Consulte a [página de Suporte do Google sobre a função FILTER](https://support.google.com/docs/answer/3093197?hl=en) com a sintaxe e uso de amostra, além de exemplos que você pode baixar em uma planilha do Google.

Link para copiar a planilha: [Exemplos da função FILTER](https://docs.google.com/spreadsheets/d/1caULJLQvQuzBnCN7rO9utg0xSKrYms7wM0Ph7A2JXY4/copy)

### Teste seu conhecimento sobre como documentar o processo de limpeza

## Parabéns! Você foi aprovado!

### Nota recebida: 100%

**Para ser aprovado:** 80% ou superior

### Perguntas e Respostas:

### Pergunta 1: Importância da Documentação do Progresso de um Conjunto de Dados

- **Opções Corretas:**
    - Para recuperar erros associados à limpeza de dados.
    - Comunicar mudanças a outros usuários.
    - Determinar a qualidade dos dados.

### Pergunta 2: Documentação Durante a Limpeza de Dados

- **Opções Corretas:**
    - Acompanhar exclusões.
    - Acompanhar erros.
    - Acompanhar alterações.

### Pergunta 3: Metas Alcançadas com a Documentação da Limpeza de Dados

- **Opções Corretas:**
    - Manter membros da equipe alinhados.
    - Ser transparente com relação ao processo.
    - Comprovar sua responsabilidade às partes interessadas do projeto.

---

# Desafio semanal 4