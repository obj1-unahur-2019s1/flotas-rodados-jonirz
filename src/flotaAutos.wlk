class Corsa {
	var property color
	
	method capacidad(){return 4}
	
	method velocidadMaxima(){return 150}
	
	method peso() {return 1300}
}

class Kwid{
	var property tanqueAdicional
	
	
	method capacidad(){return if (tanqueAdicional){3} else {4}}
	
	method velocidadMaxima(){return if (tanqueAdicional){110} else {120}}
	
	method peso (){return if (tanqueAdicional){1350} else {1200}}
		
	method color(){return "azul"}	
}

object interiorComodo{
	method capacidad(){return 5}
	method peso(){return 700}
}

object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1200}
}

object motorPulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}

object motorBataton{
	method peso(){return 500}
	method velocidadMaxima(){return 80}
}

object trafic{
	var property interior = interiorComodo
	var property motor = motorPulenta
	
	
	method peso(){return 4000 + interior.peso() + motor.peso()}
	method velocidadMaxima(){}
	
	method color(){return "blanco"}
				
}

class AutoEspecial{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	
	
}




 
	
	
	
