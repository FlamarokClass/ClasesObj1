import pepita.*

object roque1 { // habla con pepita y le da indicaciones que modifica el objeto pepita

	method entrenar() { //funcion que afecta a pepita no al estado interno de roque, afecta a la de pepita, funcion de indicacion
		//pepita.volar(10) // definir metodo volar
		pepita.comer(alpiste,300)
		//pepita.volar(5)		
	}
		
}

object roque2 { // generalizado para todas las aves, es importante que sea polimoficas y entiendan los mensajes volar y comer
	var pupilo = null
	
	method tuPupiloEs(ave) {
		pupilo = ave
	}
	
	method entrenar() {
		pupilo.volar(10) // pupilo es una referencia a otro objeto memorizado, para entrenar a otro objeto debemos indicarlo con el metodo tuPupiloEs()
		pupilo.comer(alpiste, 300)
		pupilo.volar(5)
	}
}


