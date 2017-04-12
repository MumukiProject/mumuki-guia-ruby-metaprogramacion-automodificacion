Dentro de una clase, ¡`self` **es** la clase!. Entonces, si definís métodos de clase, vas a poder utilizarlos dentro de su cuerpo:

```ruby
class Foo
  def self.bar
    5
  end

  bar
end
```
Y esto también aplica a la herencia y a los mixins: por ejemplo, si un mixin provee un método de clase, éste puede ser utilizado desde el cuerpo de la clase que lo incluya. ¡Y así es como surgen los _macros_ `attr_accesor`, `include`, etc!

> Veamos si se entiende: definí `ensure_no_override` que toma un selector y lanza la excepción `NameError` si ya existe este método. Definilo en la clase `Module` así tanto las clases como los métodos lo pueden aprovechar. Ejemplo:
> 
> ```ruby
> class Pepita
>     ensure_no_override :volar
> end
> ```
