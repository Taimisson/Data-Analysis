## Parabéns! Você foi aprovado!
### Nota recebida: 100%
**Requisito para Aprovação:** 80% ou superior

### Pergunta 1: Motivos para Escolher SQL
- **Opções Corretas:**
  - **O SQL pode lidar com grandes quantidades de dados**
    - **Feedback:** SQL é escolhido por sua capacidade de lidar com grandes volumes de dados.
  - **O SQL é um padrão amplamente conhecido na comunidade profissional**
    - **Feedback:** SQL é reconhecido como um padrão na comunidade profissional.

### Pergunta 2: Uso de SQL vs Planilhas
- **Opções Corretas:**
  - **Ao gravar consultas e alterações no decorrer de um projeto**
    - **Feedback:** SQL é preferido para registrar consultas e alterações em projetos.
  - **Ao trabalhar com uma grande quantidade de dados**
    - **Feedback:** SQL é mais adequado para manipular grandes volumes de dados.
  - **Ao extrair rapidamente informações de muitas fontes diferentes em um banco de dados**
    - **Feedback:** SQL é eficaz na extração rápida de informações de várias fontes.

### Pergunta 3: Adicionando um Novo Cliente ao Banco de Dados
- **Resposta Correta:** INSERT INTO
  - **Feedback:** `INSERT INTO` é o comando SQL usado para adicionar novos registros a um banco de dados.

### Pergunta 4: Removendo Entradas Duplicadas e Ordenando por ID da Fatura
- **Consulta SQL:**
  ```sql
  SELECT DISTINCT billing_city FROM invoice ORDER BY invoice_id
  ```
- **Cidade de Faturamento na Linha 15:** Reno
  - **Feedback:** `DISTINCT` remove duplicatas, e a cidade de faturamento Reno aparece na linha 15.

### Pergunta 5: Verificando Nomes de Estado com Mais de 2 Caracteres
- **Consulta SQL:**
  ```sql
  SELECT * FROM customer WHERE LENGTH(state) > 2
  ```
- **País na Linha 1 do Resultado:** Irlanda
  - **Feedback:** `LENGTH(state) > 2` retorna estados com mais de 2 caracteres, com a Irlanda aparecendo na primeira linha.

### Pergunta 6: Tipo de Dados para Números com Decimal
- **Resposta Correta:** Flutuante
  - **Feedback:** Em bancos de dados SQL, o tipo de dados flutuante é usado para números com decimais.

### Pergunta 7: Convertendo Texto em Flutuações
- **Resposta Correta:** CAST
  - **Feedback:** A função `CAST` é usada para converter strings de texto em flutuações.

### Pergunta 8: Eliminando Valores Nulos dos Resultados
- **Resposta Correta:** COALESCE
  - **Feedback:** `COALESCE` é usado para eliminar valores nulos dos resultados.

### Pergunta 9: Recuperando as Primeiras 4 Letras do Nome da Cidade
- **Consulta SQL:**
  ```sql
  SELECT invoice_id, SUBSTR(billing_city, 1, 4) AS new_city FROM invoice ORDER BY billing_city
  ```
- **ID da Fatura na Linha 7:** 390
  - **Feedback:** A função `SUBSTR` extrai as primeiras 4 letras das cidades, com o ID da fatura 390 aparecendo na linha 7.

