import wollok.game.*

object randomizer {
		
	method position() {
		return self.position(0, game.width() - 1, 0, game.height() - 1) 
	}
	
	method position(xMin, xMax, yMin, yMax) {
		return 	game.at( 
					(xMin .. xMax).anyOne(),
					(yMin .. yMax).anyOne()
		) 
	}
	
	method emptyPosition() {
		const position = self.position()
		if(game.getObjectsIn(position).isEmpty()) {
			return position	
		}
		else {
			return self.emptyPosition()
		}
	}
	
}