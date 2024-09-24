import wollok.game.*

object enemigos{
	var dificultad = 1 
	var vida = 20
	var danio = 5
	var y_enemigo = 2
	var x_enemigo = 4
	var ultimo_movimiento = 2
	var property position = game.at(4,2)

	method image()= "rojo.png"
    method cambiar_dificultad(){
    	dificultad += 0.2
    	vida = vida * dificultad
    	danio = danio * dificultad
    }
    
    method seguir(personaje_x, personaje_y){                                                   
    	if (personaje_y > y_enemigo){position = position.up(1) y_enemigo += 1 ultimo_movimiento = "arriba"
    		}else if (personaje_y < y_enemigo){position = position.down(1) y_enemigo -= 1 ultimo_movimiento = "abajo"
    			}
    	if (personaje_x > x_enemigo){position = position.right(1) x_enemigo += 1 ultimo_movimiento = "derecha"
    		}else if (personaje_x < x_enemigo){position = position.left(1) x_enemigo -= 1 ultimo_movimiento = "izquierda"
    			}
   }
 
    method devolver_ultimo_movimiento(){
    	return ultimo_movimiento
    }
    method devolver_y(){
    	return y_enemigo
    }
    method devolver_x(){
    	return x_enemigo
    }
}
