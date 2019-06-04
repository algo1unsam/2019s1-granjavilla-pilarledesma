import hector.*
import alimentos.*
import wollok.game.*

class Mercado {
	
	var position = game.at((0.randomToUp(10)), (0.randomToUp(10)))
	
	method image() = "market.png"
	
	method hectorEstaEnMercado() = (position == hector.position())
	
}




object mercado1{}

object mercado2{}