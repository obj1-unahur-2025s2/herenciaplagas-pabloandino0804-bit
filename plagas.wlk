import elementos.*

class Plaga {
    var property poblacion

    method transmiteEnfermedades() = poblacion >= 10

    method atacar(unElemento) {
        unElemento.recibirAtaque(self)
        poblacion = poblacion*1.1
    }
}

class PlagaDeCucarachas inherits Plaga {
    var property pesoPromedio

    method nivelDeDanio() = poblacion / 2

    override method transmiteEnfermedades() = pesoPromedio >= 10 && super()

    override method atacar(unElemento){
        super(unElemento)
        pesoPromedio = pesoPromedio + 2
    }
}

class PlagaDePulgas inherits Plaga {
    method nivelDeDanio() = poblacion * 2
}

class PlagaDeGarrapatas inherits Plaga {
    method nivelDeDanio() = poblacion * 2
}

class PlagaDeMosquitos inherits Plaga {
    method nivelDeDanio() = poblacion

    override method transmiteEnfermedades() = poblacion % 3 == 0 && super()
}