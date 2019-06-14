import wollok.game.*
import hector.*


class Alimento {
	
	var property imagen
	
	var property position
	
	var property cosechada
	
	method image() = imagen
	
	method esRegada()
	
	method esSembrada()
	
	method esCosechada() {game.removeVisual(self)}
	
	method oroQueAporta()
		
}


class Maiz inherits Alimento{
	
	override method image() {return imagen} 
	
	override method esSembrada() {
		const maiz = new Maiz(imagen = "corn_baby.png", position = hector.position(), cosechada = 0)
		hector.agregarPlanta(maiz)
		game.addVisualIn(maiz, hector.position())
	}
	
	override method esRegada() {
		imagen = "corn_adult.png"
	} 
	
	override method esCosechada(){
		super()
		if (imagen == "corn_adult.png")
		cosechada = 1 
	}
	
	override method oroQueAporta () = 150
}

class Trigo inherits Alimento{
	
	var property etapaEvolucion=0
	
	override method image() {return imagen}
	
	override method esSembrada() {
		const trigo = new Trigo(imagen = "wheat_0.png", position = hector.position(), cosechada = 0)
		hector.agregarPlanta(trigo)
		game.addVisualIn(trigo, hector.position())
	}
	
	override method esRegada() {
		if (not etapaEvolucion == 3) etapaEvolucion+=1 else if (etapaEvolucion == 3) etapaEvolucion=0
		//remplaza imagen s/variable etapaEvolucion
		//lista de 3 palabras que concatene wheat_ etapaEvolucion .png ? 
		
		}
	
	override method esCosechada(){
		super()
		if (etapaEvolucion>=2) cosechada = 1
	}
	
	override method oroQueAporta () = (etapaEvolucion - 1) * 100
	
}

class Tomaco inherits Alimento{
	
	override method image() { return imagen}
	
	override method esSembrada() {
		const tomaco = new Tomaco(imagen = "tomaco.png", position = hector.position(), cosechada = 0)
		hector.agregarPlanta(tomaco)
		game.addVisualIn(tomaco, hector.position())
	}
	
	override method esRegada() {
		game.removeVisual(self)
		
				position = (self.position().up(1))
			game.addVisualIn(self,position)
	} 
	

	
	override method esCosechada(){ 
		super()
		cosechada = 1
	}
	
	override method oroQueAporta () = 80
}