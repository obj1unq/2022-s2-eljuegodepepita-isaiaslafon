import wollok.game.*
import randomizer.*



object manzana {
	const base= 5
	var madurez = 1
	
	method image() {
		return "manzana.png"
	}
	
	method agregarRandom() {
		game.addVisualIn(self, randomizer.position(0, game.width()-1, 1, game.height() -1))
	}
	
	method sacarDelTablero(){
		game.removeVisual(self)
	}
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

object alpiste {

	method image() {
		return "alpiste.png"
	}

	method agregarRandom() {
		game.addVisualIn(self, randomizer.position(0, game.width()-1, 1, game.height() -1))
	}
	
	method sacarDelTablero(){
		game.removeVisual(self)
	}
		
	method energiaQueOtorga() {
		return 20
	} 

}