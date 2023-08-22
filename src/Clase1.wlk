object pepucha {
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
	
	/*
	method estaFeliz() {
		return energia >= 90 // energia > 0
	}
	 */
	 
	method estaFeliz() {
		return energia >= 500 and energia <= 1000//  energia.between(500,1000)
	}
	
	method estaDebil() {
		return self.energia() <= 50 // energia > 0
	}
	
	method comerPastillaMagica() {
		energia *= 2
	}
	
	/* 
	  Metodo 1
	method energiaLibre() {  // en la variable guardamos la energia de pepita y le restamos la "reserva" si el valor de esto es mayor retorna el resultado sino retorna 0
		var energiaLibre = energia - 50 // variable que solo existira mientras se ejecuta el bloque en el cual se encuentra
		if (energiaLibre > 0) {
			return energiaLibre
		} else {
			return 0
		}
	}
	
	*/
	
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
	
	/*
	method volarHacia(destino) {
		energia -= 100
	 	ciudad = destino
	}
	 */
	
	method volarHacia(destino) {
		energia -= (ciudad.kilometros() - destino.kilometros() ).abs() / 10
	 	ciudad = destino
	}
	
	
	method volarConPremio(destino, premio) {
		energia += premio
		ciudad = destino
	}
	
	/* 
	 	POLIMORFISMO!!! 
		
	*/ 
	method comer(comida, gramos) {
		energia += (gramos * comida.energiaPorGramo())
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