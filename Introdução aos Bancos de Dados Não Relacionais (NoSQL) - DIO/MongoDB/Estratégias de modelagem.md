# Estratégias de modelagem de dados eficientes e escaláveis

- Modelagem orientada por consultas
    * A modelagem de dados no MongoDB deve ser orientada pelas consultas que serão realizadas com mais frequência.

# Inner Documents

* No MongoDB, é comum denormalizar os dados para evitar operações de junção (join) custosas. Isso significa que os dados relacionados podem ser armazenados juntos em um único documento, em vez de serem distribuídos em várias coleções.

# Quando usar

* Os dados aninhados são específicos para o documento pai.
* Os dados aninhados são sempre acessados juntamente com o documento pai.
* A cardinalidade do relacionamento é um-para-muitos (um usuário pode ter várias reservas).

# Quando não usar

* Se os dados aninhados precisarem ser consultados e atualizados independentemente do documento pai, é mais adequado utilizar coleções separadas.

# Referências

* Forma de relacionar os documentos entre si.

