import lugares.*

object paquete {
	var precio = 50
	var estaPago = false
	var destino = puenteDeBrooklyn

	method precio() {
		return precio
	}
	method estaPago() {
		return estaPago
	}

	method cambiarDestino(destinoNuevo) {
		destino = destinoNuevo
		precio = destinoNuevo.costoDeEnvio()
	}
	method marcarComoPago() {
		estaPago = true
	}
	method puedeSerEntregado() {
		return estaPago
	}
	method puedeSerEntregadoASuDestinoPor(unaPersonaMensajera) {
		return self.puedeSerEntregado() && destino.dejaPasarA(unaPersonaMensajera)
	}
}

object paquetito {
	var precio = 0
	const estaPago = true
	var destino = puenteDeBrooklyn

	method precio() {
		return precio
	}

	method cambiarDestino(destinoNuevo) {
		destino = destinoNuevo
		precio = destinoNuevo.costoDeEnvio()
	}
	method puedeSerEntregadoASuDestinoPor(unaPersonaMensajera) {
		return true
	}
}

object paquetonViajero {
	const listaDeDestinos = []
	var cantidadPagado = 0

	method precio() {
		return listaDeDestinos.size() * 100
	}
	method estaPago() {
		return cantidadPagado >= self.precio()
	}

	method agregarDestino(destinoNuevo) {
		listaDeDestinos.add(destinoNuevo)
	}
	method pagar(unaCantidadAPagar) {
		cantidadPagado += unaCantidadAPagar
	}
	method puedeSerEntregado() {
		return self.estaPago()
	}
	method puedeSerEntregadoASusDestinosPor(unaPersonaMensajera) {
		// TO DO: llenar este metodo 
	}
}