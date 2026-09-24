object empresaDeMensajeria {
    const listaDePersonasMensajeras = []
    var totalGanado = 0
    const paquetesPendientes = []
    
    method contratarAPersonaMensajera(unaPersonaMensajera) {
        listaDePersonasMensajeras.add(unaPersonaMensajera)
    }

    method despedirAPersonaMensajera(unaPersonaMensajera) {
        listaDePersonasMensajeras.remove(unaPersonaMensajera)
    }

    method despedirATodasLasPersonasMensajeras() {
        listaDePersonasMensajeras.clear()
    }

    method esGrande() {
        return listaDePersonasMensajeras.size() > 2
    }

    method primeraPersonaMensajera() {
        return listaDePersonasMensajeras.first()
    }

    method ultimaPersonaMensajera() {
        return listaDePersonasMensajeras.last()
    }

    method noTienePersonasEmpleadas() {
        return listaDePersonasMensajeras.isEmpty()
    }

    method algunaPersonaMensajeraPuedeEntregar(unPaquete) {
        return listaDePersonasMensajeras.any { unaPersonaMensajera => unPaquete.puedeSerEntregadoPor(unaPersonaMensajera) }
    }

    method personasMensajerasQuePuedenEntregar(unPaquete) {
        return listaDePersonasMensajeras.filter { unaPersonaMensajera => unPaquete.puedeSerEntregadoPor(unaPersonaMensajera) }
    }

    method tieneSobrepeso() {
        const pesoPromedio = listaDePersonasMensajeras.average{ unaPersonaMensajera => unaPersonaMensajera.peso() }
        return pesoPromedio > 500
    }

    method entregar(unPaquete) {
        if (self.algunaPersonaMensajeraPuedeEntregar(unPaquete)) {
            self.personasMensajerasQuePuedenEntregar(unPaquete).anyOne().enviar(unPaquete)
            paquetesPendientes.remove(unPaquete)
            totalGanado += unPaquete.precio()
        } else {
            self.agregarComoPendiente(unPaquete)
        }
    }

    method facturacion() {
        return totalGanado
    }

    method agregarComoPendiente(unPaquete) {
        paquetesPendientes.add(unPaquete)
    }

    method hayPaquetesPendientes() {
        return not paquetesPendientes.isEmpty()
    }

    method entregarMultiples(unConjuntoDePaquetes) {
        unConjuntoDePaquetes.forEach({ unPaquete => self.entregar(unPaquete) })
    }

    method entregarPaquetePendienteMásCaro() {
        self.entregar(self.paquetePendienteMásCaro())
    }

    method paquetePendienteMásCaro() {
        const precioDelPaquetePendienteMasCaro = paquetesPendientes.map({ unPaquete => unPaquete.precio() }).max()
        return paquetesPendientes.find({ unPaquete => unPaquete.precio() == precioDelPaquetePendienteMasCaro })
    }
}