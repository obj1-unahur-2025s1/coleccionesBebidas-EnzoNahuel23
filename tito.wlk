object tito{
    var cantidad = 5
    var bebida = wisky
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
    const proteina = [10, 5, 15]
    method rendimiento (cantidad) = cantidad * (proteina.sum())
    method añadirProteina(prot){
        proteina.add(prot)
    }
}

object aguaSaborizada{
    var property sabor = wisky
    method rendimiento (cantidad) = cantidad * (1 + sabor.rendimiento(2.5))
}

object coctel{
    const property ingredientes = [terere, licuado]
    method rendimiento() =  if (not ingredientes.contains(cianuro)) ingredientes.sum({e => e.rendimiento(1)}) else 0
    method agregarIngrediente(ing) {
      ingredientes.add(ing)
    }   
}

object coctelSuave{
    const ingredientes = [wisky, terere]
    const ingredientesSeleccionados = ingredientes.filter({e => e.rendimiento(1) > 0.5})
    method rendimiento() = ingredientesSeleccionados.sum({e => e.rendimiento(1)})
    method agregarIngrediente(ing) {
      ingredientes.add(ing)
    }
}
