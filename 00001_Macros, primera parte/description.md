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

¿Ves algo en común entre estas dos cosas? Parecería que el lenguaje nos proveyó con construcciones especiales para hacer estas cosas, ¿no?

No son construcciones especiales, sino simplemente mensajes que le están siendo enviados a un objeto: `self`, que es el receptor implícito cuando enviamos mensajes.

Ahora bien, ¿quién es `self` dentro de la clase? ¿Te acordás?

> Recordalo probando el siguiente código.
>
> ```ruby
> class Arco
>  self
> end
>```



