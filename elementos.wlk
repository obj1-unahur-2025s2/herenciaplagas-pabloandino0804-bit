import plagas.*
class Hogar {
  var property nivelDeMugre
  var property confortHogar

  method esBueno() = nivelDeMugre <= confortHogar/2

  method recibirAtaque(unaPlaga){
    nivelDeMugre += unaPlaga.nivelDeDanio()
  }
}

class Huerta {
  var property capacidadDeProduccion
  
  method nivelDeProduccion() = 10

  method esBueno() = capacidadDeProduccion > nivelFijo.nivelMinimo()

  method recibirAtaque(unaPlaga){
    capacidadDeProduccion -= unaPlaga.nivelDeDanio() * 0.1

    if (unaPlaga.transmiteEnfermedades()) {
      capacidadDeProduccion -= 10
    }
  }
}

object nivelFijo {
  var property nivelMinimo = 0
}

class Mascota {
  var property nivelDeSalud

  method esBueno() = nivelDeSalud > 250 

  method recibirAtaque(unaPlaga){
    if (unaPlaga.transmiteEnfermedades()){
      nivelDeSalud -= unaPlaga.nivelDeDanio()
    }
  }
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

