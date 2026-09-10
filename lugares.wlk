object puenteDeBrooklyn {
	method costoDeEnvio() {
		return 150
	}
    method dejaPasarA(unMensajero) {
        return unMensajero.pesoTotal() < 1000 
    }
}

object laMatrix {
	method costoDeEnvio() {
		return 500
	}
    method dejaPasarA(unMensajero) {
        return unMensajero.puedeLlamar()
    }
}