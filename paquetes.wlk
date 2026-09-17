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
	var destino = puenteDeBrooklyn

	method precio() {
		return 0
	}

	method cambiarDestino(destinoNuevo) {
		destino = destinoNuevo
	}
	method puedeSerEntregadoASuDestinoPor(unaPersonaMensajera) {
		return true
	}
}

object paquetonViajero {
	const listaDeDestinos = []
	var cantidadPagada = 0

	method precio() {
		return listaDeDestinos.size() * 100
	}
	method estaPago() {
		return cantidadPagada >= self.precio()
	}

	method agregarDestino(destinoNuevo) {
		listaDeDestinos.add(destinoNuevo)
	}
	method pagar(unaCantidadAPagar) {
		cantidadPagada += unaCantidadAPagar
	}
	method puedeSerEntregado() {
		return self.estaPago()
	}
	method puedeSerEntregadoASusDestinosPor(unaPersonaMensajera) {
		return self.puedeSerEntregado() && listaDeDestinos.all{ destino => destino.dejaPasarA(unaPersonaMensajera)}
	}
}