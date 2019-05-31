import wollok.game.*
import alimentos.*

object hector {
	
	const plantas = []
	
	var property oro = 0
	
	var property position= game.at(3,3)
	
	method image() = "player.png"
	
	method agregarPlanta(planta) {plantas.add(planta)}
	
	//method mismaPosicion() = plantas.any{planta => planta.position() == self.position()}
	
	method sembrar(){
		
		
		
	}
	
	method regar(){
		if (plantas.any{planta => planta.position() == self.position()})
		(plantas.find{planta => planta.position() == self.position()}).esRegada() 
			
		// si encuentra, regar, else tirar una excepción indicando "no tengo nada para regar"
			
	}
	
	
	method cosechar(){}
	
	
	
	
}
