import wollok.game.*

class Puertas{
	var property id
	var estado = 0 
	const property x
	const property y
	var property position = game.at(x, y)
	method imagen() = "puerta.png"
	method abrir(llave){
		if (llave == id){estado = 1}
	}
}



