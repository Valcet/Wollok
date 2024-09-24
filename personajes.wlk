import wollok.game.*
import pistola.*
object personaje{
	var vida = 100
	var vidas = 3
	var personaje_x = 3
	var personaje_y = 3
	var direccion = "d"
	const inventario = []
	var municion = 10
	var property position = game.at(3,3)
	const spawn = game.at(3,3)
	var imagen = "fondo_redondo.jpg"
	method image()= imagen
	
	method agregar_inventario(objeto){
	  inventario.add(objeto)
	}
	method mostrar_inventario() {
	  return inventario
	}
	method disparar(){
		pistola.gastar_balas()
	}
	method recargar(){
		municion -= 10
		pistola.recargar()
	}
	method vidas_totales(){
		vidas -= 1
		if (vidas == 0){
			const set = #{2, 3}
		}
		return vidas
	}
	
	method nueva_vida(){
		vida = 100
		vidas = 3
		position = spawn
	}
	
	method mover_arriba(){
		position = position.up(1)
		personaje_y += 1
		direccion = "w"
	}
	method mover_abajo(){
		position = position.down(1)
		personaje_y -= 1
		direccion = "s"
	}
	method mover_izquierda(){
		position = position.left(1)
		personaje_x -= 1
		direccion = "a"
	}
	method mover_derecha(){
		position = position.right(1)
		personaje_x += 1
		direccion = "d"
	}
	method devolver_y(){
		return personaje_y
	} 
	method devolver_x(){
		return personaje_x
	}
	method devolver_direccion(){
		return direccion
	}

	method recibir_danio(ultimo_movimiento){
		vida = vida - 20
		if (vida <= 0){
			return self.vidas_totales()
		}else{
		if (ultimo_movimiento == "arriba"){
			position = position.up(2)
		}else if (ultimo_movimiento == "abajo"){
			position = position.down(2)
		}else if (ultimo_movimiento == "derecha"){
			position = position.right(2)
		}else if (ultimo_movimiento == "izquierda"){
			position = position.left(2)
		}return vidas}
	}
	method cambiar_perspectiva(){
		if(direccion == "d"){
			imagen = "personaje_derecha.png"
		}else if(direccion == "a"){
			imagen = "personaje_izquierda.png"
		}else if(direccion == "w"){
			imagen = "personaje_arriba.png"
		}else if(direccion == "s"){
			imagen = "personaje_abajo.png"
		}
	}
	method recibir_danio2(ultimo_movimiento_enemigo){
		vida -= 20
		if (vida <= 0){
			return self.vidas_totales()
		}else{
		var dato = 1
		dato = dato.randomUpTo(2)
		if ((ultimo_movimiento_enemigo == "derecha" or ultimo_movimiento_enemigo == "izquierda") and dato == 2){
			position = position.up(2)
			}else if((ultimo_movimiento_enemigo == "derecha" or ultimo_movimiento_enemigo == "izquierda") and dato == 1)
				{position = position.down(2)}
		if ((ultimo_movimiento_enemigo == "arriba" or ultimo_movimiento_enemigo == "abajo") and dato == 2){
			position = position.right(2)
			}else if((ultimo_movimiento_enemigo == "derecha" or ultimo_movimiento_enemigo == "izquierda") and dato == 1)
				{position = position.left(2)}
			return vidas}
	}
	
}