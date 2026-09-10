object paquete {
	var precio = 150
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
}

object puenteDeBrooklyn {
	method costoDeEnvio() {
		return 150
	}
}

object laMatrix {
	method costoDeEnvio() {
		return 500
	}
}