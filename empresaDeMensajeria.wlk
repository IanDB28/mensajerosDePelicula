object empresaDeMensajeria {
    const listaDePersonasMensajeras = []
    
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


}