Cuando queremos implementar automáticamente los getters, hacemos:

```ruby
class Celular
  attr_reader :marca, :modelo
end
```

Por otro lado, cuando queremos incluir un mixin hacemos:

```ruby
class Guerrero
  include Defensor
end
```

Contra lo que podríamos pensar, `include`, `attr_reader`, etc, no son palabras reservadas del lenguaje, sino meros mensajes que le estamos enviando a `self` (que es el receptor implícito cuando enviamos mensajes).

> Ah, pero ¿quién era `self` dentro de la clase? ¿Te acordás? Recordalo probando el siguiente código.
>
> ```ruby
> class Arco
>  self
> end
>```



