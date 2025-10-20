class Nave {
	var property velocidad = 0

	method recibirAmenaza() {}

	method propulsar() {
		velocidad = 300000.min(velocidad + 20000)
	}

	method prepararParaVaiajar() {
		velocidad += 300000.min(velocidad + 15000)
	}
}

class NaveDeCarga inherits Nave {

	var property carga = 0
	var property sellado = false

	method sobrecargada() = carga > 100000

	method excedidaDeVelocidad() = velocidad > 100000

	override method recibirAmenaza() {
		carga = 0
	}

	method sellarAlVacío() {
		sellado = true
	}

	method dessellar() {
		sellado = false
	}

	override method prepararParaVaiajar() {
		super()
		self.sellarAlVacío()
	}

}

class NaveDePasajeros inherits Nave {

	var property alarma = false
	const cantidadDePasajeros = 0

	method tripulacion() = cantidadDePasajeros + 4

	method velocidadMaximaLegal() = 300000 / self.tripulacion() - if (cantidadDePasajeros > 100) 200 else 0

	method estaEnPeligro() = velocidad > self.velocidadMaximaLegal() or alarma

	override method recibirAmenaza() {
		alarma = true
	}

}

class NaveDeCombate inherits Nave {
	var property modo = reposo
	const property mensajesEmitidos = []

	method emitirMensaje(mensaje) {
		mensajesEmitidos.add(mensaje)
	}
	
	method ultimoMensaje() = mensajesEmitidos.last()

	method estaInvisible() = velocidad < 10000 and modo.invisible()

	override method recibirAmenaza() {
		modo.recibirAmenaza(self)
	}

	override method prepararParaVaiajar() {
		super()
		modo.preparaciónViaje(self)
	}

}

object reposo {

	method invisible() = false

	method recibirAmenaza(nave) {
		nave.emitirMensaje("¡RETIRADA!")
	}

	method preparaciónViaje(nave) {
		nave.emitirMensaje("Saliendo en misión")
		nave.modo(ataque)
	}

}

object ataque {

	method invisible() = true

	method recibirAmenaza(nave) {
		nave.emitirMensaje("Enemigo encontrado")
	}

	method preparaciónViaje(nave) {
		nave.emitirMensaje("Volviendo a la base")
	}

}
