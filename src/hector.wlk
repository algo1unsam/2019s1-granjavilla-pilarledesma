import wollok.game.*
import alimentos.*
import mercados.*

object hector {
	
	const plantas = []
	
	const mercados = [mercado1, mercado2]
	
	var property oro = 0
	
	var property position= game.at(3,3)
	
	method image() = "player.png"
	
	method agregarPlanta(planta) {plantas.add(planta)}
	
	method encuentraPlanta()  = plantas.any{planta => planta.position() == self.position()} 
	
	method devuelvePlanta() = plantas.find{planta => planta.position() == self.position()}
	
	method estaEnMercado() = mercados.any{mercado => mercado.position() == self.position()} 

		
	method regar(){
		
		if (self.encuentraPlanta()) {(self.devuelvePlanta()).esRegada()} 	
		// si encuentra, regar, else tirar una excepción indicando "no tengo nada para regar"
		
		}
	
	
	method cosechar(){
		
		if (self.encuentraPlanta()){ (self.devuelvePlanta()).esCosechada() }
		//idem regar
		
	}
	
	method plantasParaVender() = plantas.filter{planta => planta.cosechada() == 1}
	
	method vender(){
		if (self.estaEnMercado()){
			self.cobrarOro()
			plantas.forEach{planta => planta.cosechada(0)}
		}
		
		
	}

	method cobrarOro() {oro = (self.plantasParaVender()).sum{planta => planta.oroQueAporta()}}
	
}
