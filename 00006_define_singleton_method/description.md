Hasta ahora utilizamos `define_method` para agregar métodos (de instancia) a una clase. ¿Y si queremos agregar métodos de clase? :thought_balloon: Una opción, que ya vimos antes, es agregarlo mediante `def objeto.metodo`:

```ruby
def mi_clase.mi_metodo_de_clase(argumentos)
  #...
end
```

Sin embargo, de la misma forma que `def metodo` es azúcar sintáctica sobre `define_method`, `def objeto.metodo` es azúcar sintáctica sobre `objeto.define_singleton_method`: 

```ruby
mi_objecto.define_singleton_method nombre do |argumentos|
  #...
end
```

> Usando `define_singleton_method` agregá al objeto `homero` el método `hmmm!`:
> 
> ```ruby
> ム homero.hmmm! 'rosquillas'
> => "hmmm rosquillas!"
> ```
