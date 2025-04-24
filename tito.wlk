object tito{
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        self.inerciaBase() / self.peso()
    }
}

object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}

object licuado {
    const proteina = [10, 15, 5]
    const rendimiento = proteina.sum()
    method añadirProteina(prot){
        proteina.add(prot)
    }
}

object aguaSaborizada{
    var property sabor = wisky
    const rendimiento = 1 + sabor.rendimiento(2.5)
}

object coctel{
    const ingredientes = [wisky, terere, licuado]
    const rendimiento =  if (not ingredientes.contains(cianuro)) ingredientes.sum() else 0
}