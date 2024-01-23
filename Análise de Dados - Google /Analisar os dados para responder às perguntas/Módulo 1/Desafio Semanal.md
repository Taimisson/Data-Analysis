# Desafio Semanal 1

### Desafio Semanal 1

**Teste valendo nota. • 40 min**

**Vencimento:** Jan 28, 11:59 PM -03

**Parabéns! Você foi aprovado!**

Nota recebida: **93,75%**

Nota do envio mais recente: **93,75%**

Para ser aprovado: **80% ou superior**

### 1. Pergunta 1

Com relação ao processo de análise de dados, qual das alternativas a seguir refere-se à fase de análise? Selecione todas as opções válidas.

- [x]  Obter contribuições de outros**Correto:** Há quatro fases de análise: organizar os dados, formatar e ajustar os dados, obter informações de outras pessoas e transformar dados através da observação das relações entre pontos de dados e fazer cálculos.
- [ ]  Visualizar os dados
- [x]  Organizar dados em seções compreensíveis**Correto:** Há quatro fases de análise: organizar os dados, formatar e ajustar os dados, obter informações de outras pessoas e transformar dados através da observação das relações entre pontos de dados e fazer cálculos.
- [x]  Formatar dados usando classificações e filtros**Correto:** Há quatro fases de análise: organizar os dados, formatar e ajustar os dados, obter informações de outras pessoas e transformar dados através da observação das relações entre pontos de dados e fazer cálculos.

### 2. Pergunta 2

Durante qual das quatro fases da análise você compara seus dados às fontes externas?

- [x]  Obter contribuições de outros
- [ ]  Transformar dados
- [ ]  Formatar e ajustar dados
- [ ]  Organizar dados**Correto:** Comparar seus dados a fontes externas ocorre enquanto obtém informações de outras pessoas.

### 3. Pergunta 3

Qual das ações a seguir pode ocorrer durante a transformação dos dados? Selecione todas as opções válidas.

- [x]  Identificar um padrão nos dados**Correto:** A transformação de dados abrange identificar as relações e os padrões entre os dados e fazer cálculos com base nos dados disponíveis.
- [ ]  Excluir informações irrelevantes dos dados**Não deve ser selecionado:** Reveja o vídeo sobre fases da análise para relembrar seu conhecimento.
- [x]  Reconhecer relações nos dados**Correto:** A transformação de dados abrange identificar as relações e os padrões entre os dados e fazer cálculos com base nos dados disponíveis.
- [ ]  Realizar cálculos com base nos dados

### 4. Pergunta 4

Preencha a lacuna: A classificação ordena os dados com base em um(a) _____ específico(a) selecionado(a).

- [ ]  observação
- [ ]  cálculo
- [ ]  modelo
- [x]  métrica**Correto:** A classificação ordena os dados com base em uma métrica específica selecionada, que envolve organizar os dados em uma ordem significativa para torná-los mais fáceis de entender, analisar e visualizar.

### 5. Pergunta 5

O analista de dados está classificando os dados da planilha. Ele quer garantir que, ao reorganizar os dados, os dados das linhas permaneçam juntos. Qual técnica ele deve usar para ordenar os dados?

- [ ]  Classificar linhas
- [ ]  Classificar coluna
- [ ]  Classificar junto
- [x]  Classificar planilha**Correto:** A ferramenta Classificar planilha ordena todos os dados de uma planilha por determinada coluna classificada. Os dados das linhas permanecem juntos durante a classificação.

### 6. Pergunta 6

O analista de dados usa a função para classificar o intervalo de uma planilha entre as células H1 e K65. Ele classifica em ordem crescente pela primeira coluna, a coluna H. Qual a sintaxe usada?

- [ ]  =SORT(H1:K65, A, TRUE)
- [x]  =SORT(H1:K65, 1, TRUE)
- [ ]  =SORT(H1:K65, 1, FALSE)
- [ ]  [ ]

=SORT(H1:K65, A, FALSE)

**Correto:** A sintaxe é `=SORT(H1:K65, 1, TRUE)`. A primeira parte da função classifica os dados no intervalo especificado. O número 1 representa a primeira coluna. A instrução TRUE, por sua vez, classifica em ordem crescente.

### 7. Pergunta 7

Você está executando uma consulta em um banco de dados com dados sobre música. Cada álbum possui um número de identificação. Você só tem interesse em dados relacionados ao álbum com número de identificação 6. As identificações de álbum estão listadas na coluna `album_id`.

Você escreve a consulta SQL abaixo. Adicione uma cláusula `WHERE` que retornará somente os dados sobre o álbum com número de identificação 6.

```sql
SELECT
*
FROM
track
WHERE album_id = 6

```

Quantas músicas há no álbum com o número de identificação 6?

- [ ]  5
- [ ]  8
- [ ]  20
- [x]  13**Correto:** A cláusula `WHERE album_id = 6` retornará somente os dados sobre o álbum com número de identificação 6. A consulta completa é `SELECT * FROM track WHERE album_ID = 6`. A cláusula `WHERE` filtra resultados que atendem a certas condições.

### 8. Pergunta 8

Você está trabalhando com um banco de dados que contém dados de faturas sobre compras de música online. Você só tem interesse em faturas enviadas aos clientes localizados em Delhi. Você quer classificar as faturas pelo total do pedido em ordem crescente. Os totais de pedidos estão listados na coluna `total`.

Você escreve a consulta SQL abaixo. Adicione uma cláusula `ORDER BY` que ordenará as faturas por total do pedido em ordem crescente.

```sql
SELECT
*
FROM
invoice
WHERE
billing_city = "Delhi"
ORDER BY Total

```

Qual total aparece na linha 4 do resultado da sua consulta?

- [ ]  5,94
- [x]  3,96
- [ ]  1,98
- [ ]  8,91
    
    **Correto:** A cláusula `ORDER BY total` ordenará as faturas por total do pedido em ordem crescente. A consulta completa é `SELECT * FROM invoice WHERE billing_city = "Delhi" ORDER BY total`. A cláusula `ORDER BY` indica ao banco de dados como organizar os dados retornados. Além disso, por padrão, a cláusula `ORDER BY` ordena os dados em ordem crescente.
    
    O total de 3,96 aparece na linha 4 do resultado da sua consulta.