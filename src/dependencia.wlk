import flotaAutos.*
import pedidos.*

class Dependencia{
	const flota = #{}
	
	var property empleados = 0 
	
	
	
	method agregarAFlota(rodado){ flota.add(rodado)}
	
	method quitarDeFlota(rodado){ flota.remove(rodado)}
	
	method pesoTotalFlota(){return flota.sum({p=>p.peso()})}
	
	method estaBienEquipada(){return flota.size() >= 3 and flota.all({v => v.velocidadMaxima() >= 100})}
	
	method capacidadTotalEnColor(color){flota.filter{c => c.color()== color}.sum{c => c.capacidad()}}
	
	method colorDelRodadoMasRapido(){flota.max({c =>c.velocidadMaxima()}.color())}
	
	method capacidadFaltante(){return empleados - self.capacidadTotal()}
	
	method capacidadTotal() {return flota.sum { r => r.capacidad() }}
	
	method esGrande(){return empleados >= 40 and flota.size() >= 5}
}