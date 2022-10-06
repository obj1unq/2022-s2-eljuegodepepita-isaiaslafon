import pepita.*
import comidas.*
//import extras.*
import randomizer.*
import silvestre.*
import nido.*
import wollok.game.*
import direcciones.*

object tutorial1 {
	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
	}
}

object tutorial2 {
	const property comidas = #{alpiste,manzana}
	
	method comidasActuales(personaje){
		return game.colliders(personaje).filter( {comida => comidas.contains(comida)}) 
	}
	
	method comidaActual(personaje){
		return self.comidasActuales(personaje).uniqueElement()
	}
	
	method iniciar() {
		game.addVisualIn(manzana, game.at(0,0))
		//manzana.addVisualIn(gameAt(0,0) //agregarRandom()
		alpiste.agregarRandom()
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas(self)
	}
}

object config{
	method configurarTeclas(nivel){
		
		keyboard.c().onPressDo( { pepita.comerYQuitar(nivel.comidaActual(pepita)) } )
													
		keyboard.left().onPressDo( { pepita.mover(izquierda) }  )
		keyboard.right().onPressDo( { pepita.mover(derecha) }  )
		keyboard.up().onPressDo( { pepita.mover(arriba) }  )
		keyboard.down().onPressDo( { pepita.mover(abajo) }  )
		
		/*
		keyboard.a().onPressDo({manzana.sacarDelTablero();	
								manzana.agregarRandom()
								})*/
	}	
}
