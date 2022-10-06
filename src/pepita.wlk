import wollok.game.*
import silvestre.*
import comidas.*

object pepita {

	var property position = game.at(5,7)
	var property cazador = silvestre
	
	var energia = 1000

	method image() {
		return "pepita-" +  self.nombreEstado()  + ".png"
	}
	
	method text() {
		return energia.toString()
	}
	
	method nombreEstado() {
		return if (self.muerta()) {"gris"} else {"libre"}
	}
	
	method muerta(){
		return self.atrapada() or self.sinEnergia()
	}
	method sinEnergia() {
		return energia <= 0
	}
	method atrapada() {
		return cazador.position() == self.position()
	}
	
//	method text() {
//		return "HOLA!!! SOY PEPITA"
//	}
//	
//	method textColor() {
//		return "FF0000FF"
//	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method comerYQuitar(comida){
		self.comer(comida)
		comida.sacarDelTablero()	
		//comida.agregarRandom()
	}

	method volar(kms) {
		self.validarVolar(kms)
		energia = energia - self.energiaParaVolar(kms)
	}
	
	method energia() {
		return energia
	}
	
	method energiaParaVolar(distancia){
		return 10 + distancia	
	}
	
	method puedeVolar(distancia){
		return 	energia >= self.energiaParaVolar(distancia)
	}
	
	method validarVolar(distancia){
		if(not self.puedeVolar(distancia)){ self.error("no puedo volar tanto!")}
	}
	
	method mover(direccion) {
		const paso = 1
		self.volar(paso)
		position = direccion.siguientes(position, paso)
	}
}

