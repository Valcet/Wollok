import wollok.game.*
import pistola.*
import personajes.*
class Bala{
	var imagen = "bala_derecha"
    var bala_y = personaje.devolver_y() 
    var bala_x = personaje.devolver_x()
    var property position = game.at(bala_x,bala_y)
    method image() = imagen
	method aparecer(){
        const direccion = personaje.devolver_direccion()
        if (direccion == "w"){
            imagen = "bala_arriba.png"
        }else if(direccion == "s"){
			imagen = "bala_abajo.png"
		}else if(direccion == "d"){
			imagen = "bala_derecha.png"
		}else if(direccion == "a"){
			imagen = "bala_izquierda.png"
		}
    }
	
    method moverse(){
		if(personaje.devolver_direccion() == "w")
		position = position.up(1)
		bala_y += 1
	}
	method mover_abajo(){
		position = position.down(1)
		bala_y -= 1
	}
	method mover_izquierda(){
		position = position.left(1)
		bala_x -= 1
	}
	method mover_derecha(){
		position = position.right(1)
		bala_x += 1
	}
}
