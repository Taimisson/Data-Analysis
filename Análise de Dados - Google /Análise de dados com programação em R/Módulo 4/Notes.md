# Teste de Conhecimento sobre Anotação e Salvamento de Visualizações

**Duração:** 10 minutos

**Pontos Totais Disponíveis:** 4 pontos

**Resultado:**

**Parabéns! Você foi aprovado!**

**Nota recebida:** 100%

**Para ser aprovado:** 80% ou superior

## Questões e Respostas

### Pergunta 1

**Quais das opções a seguir representam benefícios de se acrescentar rótulos e anotações a um gráfico? Selecione todas as opções válidas.**

- [x]  Destacar os dados importantes do gráfico
    
    ***Feedback:** Entre os benefícios de se acrescentar anotações a um gráfico destacam-se: indicar o objetivo principal do gráfico, destacar dados importantes do gráfico e ajudar as partes interessadas a entenderem rapidamente o gráfico.*
    
- [x]  Indicar o objetivo principal do gráfico
    
    ***Feedback:** Entre os benefícios de se acrescentar anotações a um gráfico destacam-se: indicar o objetivo principal do gráfico, destacar dados importantes do gráfico e ajudar as partes interessadas a entenderem rapidamente o gráfico.*
    
- [ ]  Escolher um geom para o gráfico
- [x]  Ajudar as partes interessadas a entenderem rapidamente o gráfico
    
    ***Feedback:** Entre os benefícios de se acrescentar anotações a um gráfico destacam-se: indicar o objetivo principal do gráfico, destacar dados importantes do gráfico e ajudar as partes interessadas a entenderem rapidamente o gráfico.*
    

**Pontuação:** 1 / 1 ponto

### Pergunta 2

**Um analista de dados está criando um gráfico para fazer uma apresentação às partes interessadas. Ele quer acrescentar uma legenda ao gráfico, para ajudar a comunicar informações importantes. Qual função o analista pode usar?**

- [ ]  Função geom_bar()
- [x]  Função labs()
- [ ]  Função geom_point()
- [ ]  Função facet_wrap()

**Feedback:** O analista pode usar a função labs() para acrescentar uma legenda ao gráfico.

**Pontuação:** 1 / 1 ponto

### Pergunta 3

**Qual função pode ser usada para inserir um rótulo de texto dentro da grade do gráfico para indicar pontos de dados específicos?**

- [ ]  Função labs()
- [x]  Função annotate()
- [ ]  Função aes()
- [ ]  Função facet_wrap()

**Feedback:** Pode-se usar a função annotate() para inserir um rótulo de texto dentro da grade do gráfico para indicar pontos de dados específicos.

**Pontuação:** 1 / 1 ponto

### Pergunta 4

**Você está trabalhando com o conjunto de dados dos pinguins e acaba de criar um gráfico de dispersão com o seguinte código:**

```
ggplot(data = penguins) +
geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +

```

**Você deseja usar a função labs() para acrescentar o título “Pinguins” ao seu gráfico. Assim, você acrescenta o bloco de código que permite adicionar o título “Pinguins” ao gráfico.**

```
labs(title = “Pinguins”)

```

**Onde a visualização exibe o título?**

- [ ]  No canto inferior à direita
- [ ]  No canto inferior à esquerda
- [x]  No canto superior à esquerda
- [ ]  No canto superior à direita

**Feedback:** Deve-se usar o bloco de código `labs(title = “Pinguins”)` para adicionar o título “Pinguins” ao gráfico. Dentro do parêntese da função labs(), deve-se escrever a palavra “title”, depois um sinal de igual, seguido pelo texto específico do título entre aspas. A função labs() permite que você adicione rótulos ao gráfico. A visualização exibe o título no canto superior à esquerda.

**Pontuação:** 1 / 1 ponto