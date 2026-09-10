object moto {
    const peso = 100

    method peso() {
        return peso
    }
}

object camion {
    const peso = 500
    var cantidadDeAcoplados = 0

    method peso() {
        return peso + (cantidadDeAcoplados * 500)
    }
    method agregarAcoplado() {
        cantidadDeAcoplados += 1
    }
}