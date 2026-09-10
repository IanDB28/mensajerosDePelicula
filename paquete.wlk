import lugares.*

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