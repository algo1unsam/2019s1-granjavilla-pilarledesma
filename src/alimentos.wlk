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
	
	var property position
	
	override method image() {return imagen}
	
	override method esSembrada() {
		const trigo = new Trigo(position = hector.position())
		hector.agregarPlanta(trigo)
		game.addVisualIn(trigo, hector.position())
	}
	
	override method esRegada() {
		if (etapaEvolucion != 3) etapaEvolucion+=1 else if (etapaEvolucion == 3) etapaEvolucion=0
		//remplaza imagen s/variable etapaEvolucion
		//lista de 3 palabras que concatene wheat_ etapaEvolucion .png ? 
		
		}
	
}

class Tomaco inherits Alimento{
	
	var imagen = "tomaco.png"
	
	var property position
	
	override method image() { return imagen}
	
	override method esSembrada() {
		const tomaco = new Tomaco(position = hector.position())
		hector.agregarPlanta(tomaco)
		game.addVisualIn(tomaco, hector.position())
	}
	
	override method esRegada() {
		// if y != 10
		game.removeVisual(self)
		position = (self.position().up(1))
		game.addVisualIn(self,position)
		
		//game.addVisualIn(maiz, hector.position())
	} 
}