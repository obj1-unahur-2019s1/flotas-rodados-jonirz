import flotaAutos.*
import dependencia.*

class Pedido{
	
	var property distancia = 480
	var property tiempoMaximo = 6
	var property pasajeros = 3
	var property coloresIncompatibles = #{}
	var property pedidos = []	
	
	
	method agregarPedido(pedido) {pedidos.add(pedido)}
	
	method quitarPedido(pedido)  {pedidos.remove(pedido)}
	
	method velocidadRequerida(){return distancia / tiempoMaximo}
	
	method satisfacerPedido(auto){
		return auto.velocidadMaxima() >= self.velocidadRequerida()+10
		and auto.capacidad() >= pasajeros
		and not coloresIncompatibles.contains(auto.color())								
				}

	method acelerar(){tiempoMaximo -= 1}
	
	method relajar(){tiempoMaximo += 1}
	
	method noPuedeSatisfacer(){
		pedidos.filter({})
	}
	
}
