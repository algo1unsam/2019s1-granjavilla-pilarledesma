import wollok.game.*
import hector.*


class Alimento {
	
	var property position
	
	var property cosechada
	
	method image()
	
	method esRegada()
	
	method esSembrada()
	
	method esCosechada()
		
}


class Maiz inherits Alimento{
	
	var imagen = "corn_baby.png"	
	
	override method image() {return imagen} 
	
	override method esSembrada() {
		const maiz = new Maiz(position = hector.position(), cosechada = 0)
		hector.agregarPlanta(maiz)
		game.addVisualIn(maiz, hector.position())
	}
	
	override method esRegada() {
		imagen = "corn_adult.png"
	} 
	
	override method esCosechada(){
		if (imagen == "corn_adult.png")
		cosechada = 1 
		game.removeVisual(self)
		
	}
}

class Trigo inherits Alimento{
	
	var imagen = "wheat_0.png"
	
	var property etapaEvolucion=0
	
	override method image() {return imagen}
	
	override method esSembrada() {
		const trigo = new Trigo(position = hector.position(), cosechada = 0)
		hector.agregarPlanta(trigo)
		game.addVisualIn(trigo, hector.position())
	}
	
	override method esRegada() {
		if (etapaEvolucion != 3) etapaEvolucion+=1 else if (etapaEvolucion == 3) etapaEvolucion=0
		//remplaza imagen s/variable etapaEvolucion
		//lista de 3 palabras que concatene wheat_ etapaEvolucion .png ? 
		
		}
	
	override method esCosechada(){}
	
	
}

class Tomaco inherits Alimento{
	
	var imagen = "tomaco.png"
	
	override method image() { return imagen}
	
	override method esSembrada() {
		const tomaco = new Tomaco(position = hector.position(), cosechada = 0)
		hector.agregarPlanta(tomaco)
		game.addVisualIn(tomaco, hector.position())
	}
	
	override method esRegada() {
		// if y != 10
		game.removeVisual(self)
		position = (self.position().up(1))
		game.addVisualIn(self,position)

	} 
	
	override method esCosechada(){}
	
	
}