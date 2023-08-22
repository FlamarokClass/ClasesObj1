// s3v3 destinos iniciales

object pepita {
	var energia = 100        // energia atributo
	var ciudad = rosario
	
	method energia() {      
		return energia	
	}
	
	method ciudad() {
		return ciudad
	}
	
	method energia(cantidad) {   //  energia setter (aunque no necesario ya que setteamos mediante alimentos)
		energia += cantidad
	}
	
	 
	method estaFeliz() {
		return energia >= 500 and energia <= 1000//  energia.between(500,1000)
	}
	
	method estaDebil() {
		return self.energia() <= 50 // energia > 0
	}
	
	method comerPastillaMagica() {
		energia *= 2
	}
	
	
	method energiaLibre() {
		return 0.max(energia - 50)	
	}
	
	
	method comerLombriz() {
		energia = energia + 20
	}
	
	method comerAlpiste(gramos) {
			energia += (gramos * 4)
	}
	
	method comerEl10DeSuEnergia() {
		energia += (energia * 0.10)
	}
	
	method volarEnCirculos() {
		energia -= 20
	}
	
	
	method volarHacia(destino) {
		energia -= (ciudad.kilometros() - destino.kilometros() ).abs() / 10
	 	ciudad = destino
	}
	
	
	method volarConPremio(destino, premio) {
		energia += premio
		ciudad = destino
	}
	
	method comer(comida, gramos) {
		energia += (gramos * comida.energiaPorGramo())
	}
	
	// Metodo Nuevo del ejercicio:
	
	method visitar(destino) {
		energia += destino.energiaRevitalizadora()
	}
}


object buenosAires {
	method kilometros() {
		return 0
	}
}

object rosario {
	method kilometros() {
		return 298
	}
}

object cordoba {
	method kilometros() {
		return 696
	}
}

// dos objetos nuevos, destinos

object patagonia {
	
	method energiaRetavilizadora() {
		return 30	
	}
}

object sierrasCordobesas {
	method energiaRetavilizadora() {
		return 70	
	}
}

object mondongo {
	method energiaPorGramo() {
		return 100
	}
}

object alpiste {
	method energiaPorGramo() {
		return 4
	}
}


object alcaucil {
	method energiaPorGramo() {
		return 20
	}
}

object sorgo {
	method energiaPorGramo() {
		return 9
	}
}
