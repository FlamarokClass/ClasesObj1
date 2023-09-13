/** First Wollok example */
const bloque ={ numero => numero *2}

// se ejecuta bloque.apply(3)

const b2 = {a,b => a*b} //sentencia que devuelve una expresion

// b2.apply(3,4)

const b3 = {x => y = x*2} //sentencia que no devuelve una expresion, de esta forma no 
                          // puede realizarse
                          
const b3 = {x => {const y = x*2}} // funcionará, la expresión será otro bloque de código                    

const b4 = { => console.println("Hola")} // bloque de codigo, no recibe parametro, 
									   // es una sentencia (no expresion)
									 
method bloqueDePureba() {
	return {=> 10+10
		pepita.energia()
		"hola".lenght()}
}

// LISTAS:

const lista = [3,5,8,10,12,5,10]

// devuelve tamaño de la lista
lista.size()

// devuelve el elemento en el indice indicado
lista.get(0)

// devuelve el ultimo y el primer elemento
lista.last() // es igual a: lista.get(lista.size() -1)
lista.firts()

// agrega un elemento (un objeto), en el segundo caso agrega el objeto lista
lista.add(1)
lista.add([6,8,10])
lista.last() //[6,8,10]
lista.last().last() //10
lista.last().size() // 3				


//agrega más de un elemento al mismo tiempo
lista.addAll([6,8,10])

// elimina el elemento indicado, (en caso de duplicado, elimina el primero)
lista.remove(12)

// elimina a más de un elemento a la vez
lista.removeAll([4,3,1,12])

//Limpiar lista
lista.clear()
lista.removeAll(lista) // (es igual al primero, su interior) 

// Consultar si lista esta vacia (booleano)
lista.isEmpty()

// Consultar si un elemento está en la lista 
lista.contains(10)  

//Consultar el numero más grande
lista.max()

//Consultar el numero más chico
lista.min()

// Recorrer lista 
lista.forEach({ num => console.println("En num esta el numero: " + num)} )

const bloque = {num => console.println("En num esta el numero: " + num)}

lista.forEach({bloque)
	
// Filtrar segun nuestro criterio, simpre devuelve una lista (minimo 0, maximo, el tamaño de la misma lista
   // lista[33,29,536,33,13]
lista.filter({ num => /*expresion */ num.odd() }) //num representara el elemento en la iteracion
// generara una nueva lista con los valore que cumplen la expresion

// Map()

lista.map({n => n*2}) // la lista original no se altera
// 66 58, 1072, 66 ,26
// la nueva lista tendrá la misma cantidad de valores.
// Lista con el resultado del largo de cada palabra
const palabras = ["hola", "como", "estan", "con", "el", "woolloookk", "en", "argentina"]
palabras.map({palabra => palabra.size()}) // lista con numeros
palabras.map({palabra => palabra.size()}).max() // el numero mas grande (la palabra mas larga)

//multiplicar x2 a los numeros pares
lista.filter({x => x.even()}).map({x => x*2})


//Buscar palabra con 2 caracteres, no devuelve lista como resultado
palabras.find( {p => p.size(} == 2 ) // devuelve el primer objeto que cumple la condicion "el" "en"


     // para que encuentre todos
palabras.filter({p => p.size()== 2})
)

// Da un elemento al Azar de la lista
palabras.anyOne()


// Hay al menos 1 que cumple con la condicion (booleano, arma internamente "or" hasta el primer verdadero)
palabras.any({p => p.size()== 2})

// Todos cumplen con la condicion (booleano, dara Verdadero cuando todos sean true.)
palabras.all({p => p.size() != 1}) //true
palabras.all({p => p.size()== 2}) // false

// All como Any
palabras.any({p => p.size() == 2}) // == palabras.all({p => not (p.size() != 2)} )

lista.all({x =>x.odd()})
not lista.any({x =>x.even()})
