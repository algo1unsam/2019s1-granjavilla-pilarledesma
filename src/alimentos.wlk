import wollok.game.*
import hector.*


class Alimento {
	
	method image()
	
	method esRegada()
	
	method esSembrada()
		
}


class Maiz inherits Alimento{
	
	var imagen = "corn_baby.png"	
		
	var property position
	
	override method image() {return imagen} 
	
	override method esSembrada() {
		const maiz = new Maiz(position = hector.position())
		hector.agregarPlanta(maiz)
		game.addVisualIn(maiz, hector.position())
	}
	
	override method esRegada() {
		imagen = "corn_adult.png"
	} 
}

class Trigo inherits Alimento{
	
	var imagen = "wheat_0.png"
	
	var property etapaEvolucion=0
	
	var property position= game.at(1,9)
	
	override method image() {return imagen}
	
	override method esSembrada() {
		const trigo = new Trigo()
		hector.agregarPlanta(trigo)
	}
	
	override method esRegada() {
		if (etapaEvolucion!=3) etapaEvolucion+=1 else if (etapaEvolucion==3) 0
	
		
		}
	
}

class Tomaco inherits Alimento{
	
	var property position= game.at(4,7)
	
	override method image() { return "tomaco.png"}
	
	override method esSembrada() {
		const tomaco = new Tomaco()
		hector.agregarPlanta(tomaco)
	}
	
	override method esRegada() {
		
	} 
}