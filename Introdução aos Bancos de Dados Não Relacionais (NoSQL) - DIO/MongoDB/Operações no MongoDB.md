# Criando um DataBase

```
use {{nome_do_banco}}
```

- Enquanto o DataBase não tiver uma collection ele não será apresentado na lista.

# Criando uma collection

- db.createCollection("usuarios")
- db.createCollection("destinos")

# Inserindo Documentos

- db.usuarios.insertOne({})
- db.usuarios.insertMany([{}]) # ARRAY

# Consultando Documentos

- db.usuarios.find({})
- db.usuarios.findOne({});
- db.usuarios.findOneAndUpdate({},{});
    * db.usuarios.findOneAndDelete({});

# Excluindo Documentos

- db.usuarios.deleteOne({});
- db.usuarios.deleteMany({});