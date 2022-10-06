import pepita.*
import wollok.game.*



object visorEnergiaPepita {
	
	method position() {
		return game.at(0,0)
	}
	
	method text() {
		return "" + pepita.energia()
	}
	
	method textColor() {
		return "ff0000ff"
	}
}