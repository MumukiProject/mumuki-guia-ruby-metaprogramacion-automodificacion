Cuando declaramos métodos, la última linea de un método es su retorno. Por ejemplo:

```ruby
def x.foo
  4
end

x.foo
# => 4
```

Hasta acá, nada nuevo. Pero el _plot twist_ es que la clase también retorna su última línea. Por eso, si escribimos...

```ruby
class MiClase
end
```

...devolverá `nil`. Y si escribimos...

```ruby
class MiClase
  4
end
```

...devolverá `4`. ¿Loco, no? :hushed:

> Probá estos ejemplos en la consola

