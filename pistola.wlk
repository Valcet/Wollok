import wollok.game.*
import personajes.*
object pistola{
    var cant_balas = 10
    method gastar_balas(){
        if(personaje.mostrar_inventario().contains("pistola") and cant_balas > 0){
            cant_balas -= 1
        }else if(cant_balas <= 0){game.say(personaje, "La pistola no tiene municion")}
    }
    method recargar(){
        cant_balas += 10    
    }


}