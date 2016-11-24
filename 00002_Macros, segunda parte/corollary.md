¡Bien hecho! `ensure_no_override` también es un macro: un método que existe para ser usado dentro del cuerpo de una clase, imitando una palabra reservada del lenguaje. 

`ensure_no_override`, en particular, es útil para garantizar que cuando estamos abriendo una clase existente, no estemos redefiniendo algo que ya existía. Por ejemplo:

```ruby
class Object
  ensure_no_override :version_number

  def version_number
    #....
  end
end
```

Sin embargo, los macros más utiles son aquellos que crean dinámicamente métodos, como veremos a continuación. 