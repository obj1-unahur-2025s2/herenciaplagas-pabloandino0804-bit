class Hogar {
  var property nivelDeMugre
  var property confortHogar

  method esBueno() = nivelDeMugre <= confortHogar/2
}

class Huerta {
  var property capacidadDeProduccion
  
  method nivelDeProduccion() = 10

  method esBueno() = capacidadDeProduccion > nivelFijo.nivelMinimo() 
}

object nivelFijo {
  var property nivelMinimo = 0
}

class Mascota {
  const property nivelDeSalud

  method esBueno() = nivelDeSalud > 250 
}

class Barrios {
  const property elementos = #{}

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method quitarElemento(unElemento) {
    elementos.remove(unElemento)
  }

  method esCopado() = elementos.count({elemento => elemento.esBueno()}) > elementos.size() / 2
}

