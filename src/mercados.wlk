import hector.*
import alimentos.*
import wollok.game.*

class Mercado {
	
	const mercados = [mercado1, mercado2]
	
	var position = game.at((0.randomToUp(10)), (0.randomToUp(10)))
	
	method image() = "market.png"
	
	method hectorEstaEnMercado() = (position == hector.position())
	
}




object mercado1{}

object mercado2{}