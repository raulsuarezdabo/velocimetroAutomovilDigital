//: Velocímetro de un automóvil digital
//: Author: Raul Suarez Dabo
//: GitHub: http://github.com/raulsuarezdabo/

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    //: Method to change the speed to a new one
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var velocidadEnCadena: String? = nil
        switch velocidad {
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "VelocidadBaja"
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "VelocidadMedia"
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "VelocidadAlta"
        case .VelocidadAlta:
            self.velocidad = Velocidades.Apagado
            velocidadEnCadena = "Apagado"
        }
        return (velocidad.hashValue, velocidadEnCadena!)
    }
}


var auto = Auto();
for index in 1...20 {
    print(auto.cambioDeVelocidad())
}


