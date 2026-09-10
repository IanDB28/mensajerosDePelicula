import vehiculos.*

object jeanGray {
    const tienePoderesTelepáticos = true
    const tienePoderesTelequinesicos = true
    const peso = 65

    method pesoTotal() {
        return peso
    }
    method puedeLlamar() {
        return true
    }
}

object neo {
    const puedeVolar = true
    const peso = 0
    const tieneCelular = true
    var tieneCreditoEnElCelular = true

    method pesoTotal() {
        return peso
    }
    method puedeLlamar() {
        return tieneCreditoEnElCelular
    }
    method agotarCreditoDelCelular() {
        tieneCreditoEnElCelular = false
    }
}

object saraConnor {
    var peso = 65
    var vehiculoActual = moto
    
    method pesoTotal() {
        return peso + vehiculoActual.peso() 
    }
    method puedeLlamar() {
        return false
    }
    method cambiarPesoPropio(nuevoPeso) {
        peso = nuevoPeso
    }
    method cambiarVehiculo(nuevoVehiculo) {
        vehiculoActual = nuevoVehiculo
    }
}