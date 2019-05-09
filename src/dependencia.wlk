import flotaAutos.*

class Dependencia{
	var flota = [] 
	
	method agregarAFlota(rodado){ flota.add(rodado)}
	
	method quitarDeFlota(rodado){ flota.remove(rodado)}
	
	method pesoTotalFlota(){return flota.sum({p=>p.peso()})}
	
	method estaBienEquipada(){return flota.size() >= 3 and flota.all({v => v.velocidadMaxima() >= 100})}
	
	method capacidadTotalEnColor(color){flota.filter({c => c.color(color)} )}
	
	method colorDelRodadoMasRapido(){flota.max({c =>c.color().velocidadMaxima()})}
	
	method capacidadFaltante(){}
	
	method esGrande(){}
}