# Coleções:

* Agrupamento lógico de documentos
* Não exige esquema ou que os documentos tenham a mesma estrutura

# Características:

* Os nomes das coleções devem seguir algumas regras:
* Devem começar com uma letra ou um underscore.
* Podem conter letras, números ou underscores.
* Não podem ser vazios.
* Não podem ter mais de 64 bytes de comprimento.

# Documentos:

* São armaezenados em documentos BSON (Binary JSON),
que são estruturas flexíveis e semiestruturadas.
* Cada documento possui um identificador único chamado "_id"
* É composto por pares de chaves e valores.
* Tamanho máximo: Cada documento no MongoDB pode ter um tamanho máximo de 16MB
* Aninhamento de documentos
* Flexibilidade na evolução do esquema

# Tipos de Dados

- Simples
    * String
    * Number
    * Boolean
    * Date
    * Null
    * ObjectId
- Complexos
    * Array
    * Documento Embutido (Embedded Document)
    * Referência (Reference)
    * GeoJSON

# Estrutura de um Documento

```
{
    _id: ObjectId(""),
    "nome_campo":"valor_campo",
    ...
}
```

- Example:

```
{
   "_id":1,
   "nome":"Taisoo Magnus",
   "idade":19,
   "data_nascimento":"20023-12-22",
   "endereco":"Rua Centro, 123",
   "enderecos":[
      {
         "logradouro":"Rua Independência...",
         "numero":123,
         "bairro":"Centro",
         "cidade":"São Leopoldo"
      }
   ],
   "interesses":[
      "kart",
      "culinaria"
   ],
   "reservas":[
      1,
      2
   ]
}
```