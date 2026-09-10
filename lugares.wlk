object puenteDeBrooklyn {
	method costoDeEnvio() {
		return 150
	}
    method dejaPasarA(unaPersonaMensajera) {
        return unaPersonaMensajera.pesoTotal() < 1000 
    }
}

object laMatrix {
	method costoDeEnvio() {
		return 500
	}
    method dejaPasarA(unaPersonaMensajera) {
        return unaPersonaMensajera.puedeLlamar()
    }
}