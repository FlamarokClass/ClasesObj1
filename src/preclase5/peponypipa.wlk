import pepita.*

// estos dos deben ser polimorficos con pepita y roque ( entrenar() ), deben entender los mismos mensajes que pepita, en el mismo orden y mismo nombre y 
// cantidad de parametros

object pepon {
	var energia = 0
	
	
	method comer(comida, gramos) {
		energia += (gramos * (comida.energiaPorGramo() / 2))
	}
	
	method volar(kms){
		energia = (energia -1) + (energia - (0.5 * kms)) 
	}
	
}



object pipa { // no nos interesa la energia, solo recordar la cantidad de kms que vuela y la cantidad de comida
	var kilometros = 0
	var gramosIngeridos = 0
	
	method kmRecorridos() {
		return kilometros
	}
	
	method gramosIngeridos() {
		return gramosIngeridos
	}
	
	method comer(comida, gramos) { // el parametro comida no es relevante, pero debe permanecer para ser polimorfico con pepita
		
		gramosIngeridos += gramos
	}
	
	method volar(kms) {
		
		kilometros += kms
	}
	
}
