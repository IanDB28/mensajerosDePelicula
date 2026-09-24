import lugares.*

object paquete {
	var precio = 50
	var estaPago = false
	var destino = puenteDeBrooklyn
	var entregado = false

	method precio() {
		return precio
	}
	method estaPago() {
		return estaPago
	}

	method agregarDestino(destinoNuevo) {
		destino = destinoNuevo
		precio += destinoNuevo.costoDeEnvio()
	}
	method marcarComoPago() {
		estaPago = true
	}
	method puedeSerEntregado() {
		return estaPago
	}
	method puedeSerEntregadoPor(unaPersonaMensajera) {
		return self.puedeSerEntregado() && destino.dejaPasarA(unaPersonaMensajera)
	}
	method serEntregado() {
		entregado = true
	}
}

object paquetito {
	var destino = puenteDeBrooklyn
	var entregado = false

	method precio() {
		return 0
	}

	method agregarDestino(destinoNuevo) {
		destino = destinoNuevo
	}
	method puedeSerEntregadoPor(unaPersonaMensajera) {
		return true
	}
	method serEntregado() {
		entregado = true
	}
}

object paquetonViajero {
	const listaDeDestinos = []
	var cantidadPagada = 0
	var entregado = false

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
	method puedeSerEntregadoPor(unaPersonaMensajera) {
		return self.puedeSerEntregado() && listaDeDestinos.all{ destino => destino.dejaPasarA(unaPersonaMensajera)}
	}
	method serEntregado() {
		entregado = true
	}
}

object paquetote {
	var precio = 200
	var estaPago = false
	var destino = puenteDeBrooklyn
	var entregado = false

	method precio() {
		return precio
	}
	method estaPago() {
		return estaPago
	}

	method agregarDestino(destinoNuevo) {
		destino = destinoNuevo
		precio += destinoNuevo.costoDeEnvio()
	}
	method marcarComoPago() {
		estaPago = true
	}
	method puedeSerEntregado() {
		return estaPago
	}
	method puedeSerEntregadoPor(unaPersonaMensajera) {
		return self.puedeSerEntregado() && destino.dejaPasarA(unaPersonaMensajera)
	}
	method serEntregado() {
		entregado = true
	}
}