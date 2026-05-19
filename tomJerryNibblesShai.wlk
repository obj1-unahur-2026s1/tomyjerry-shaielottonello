object tom {
    var energia = 50
    method correr(metros) {
        energia = energia - metros.div(2)
    }
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    } 
    method velocidadMax() {
        return 5 + energia.div(10)
    } 
    method energia() = energia
    method puedeCazar(metros) {
        return energia >= metros.div(2)
    }
    method cazar(unRaton, metros) {
        if (self.puedeCazar(metros)) {
            self.correr(metros)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var property edad = 2 
    method peso() = edad * 20
    method cumplirAños() {
        edad += 1
    }
}

object nibbles {
    const property peso = 35
    method edad() {}
}

object mickeyMouse {
    const property edad = 5
    method estatura() = edad * 4
    method peso() = self.estatura() / 2 
}