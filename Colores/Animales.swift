//
//  Animales.swift
//  Colores
//
//  Created by Jose María Yagüe on 23/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Animal{
    var id: UUID = UUID()
    var nombreFotoAnimal: String
    var sonidoEspanol: String
    var sonidoIngles: String
    init(nombreFotoAnimal: String, sonidoEspanol: String, sonidoIngles:String){
        self.nombreFotoAnimal = nombreFotoAnimal
        self.sonidoEspanol = sonidoEspanol
        self.sonidoIngles = sonidoIngles
    }
}

class baseDatosAnimales: ObservableObject{
    @Published var arrayAnimales: [Animal] = [
        Animal(nombreFotoAnimal: "rana", sonidoEspanol: "rana", sonidoIngles: "ranai"),
        Animal(nombreFotoAnimal: "lobo", sonidoEspanol: "lobo", sonidoIngles: "loboi"),
        Animal(nombreFotoAnimal: "cebra", sonidoEspanol: "cebra", sonidoIngles: "cebrai"),
        Animal(nombreFotoAnimal: "gorila", sonidoEspanol: "gorila", sonidoIngles: "gorilai"),
        Animal(nombreFotoAnimal: "pinguino", sonidoEspanol: "pinguino", sonidoIngles: "pinguinoi"),
        Animal(nombreFotoAnimal: "elefante", sonidoEspanol: "elefante", sonidoIngles: "elefantei"),
        Animal(nombreFotoAnimal: "oveja", sonidoEspanol: "oveja", sonidoIngles: "ovejai"),
        Animal(nombreFotoAnimal: "bufalo", sonidoEspanol: "bufalo", sonidoIngles: "bufaloi"),
        Animal(nombreFotoAnimal: "caballo", sonidoEspanol: "caballo", sonidoIngles: "caballoi"),
        Animal(nombreFotoAnimal: "leopardo", sonidoEspanol: "leopardo", sonidoIngles: "leopardoi"),
        Animal(nombreFotoAnimal: "leon", sonidoEspanol: "leon", sonidoIngles: "leoni"),
        Animal(nombreFotoAnimal: "tigre", sonidoEspanol: "tigre", sonidoIngles: "tigrei"),
        Animal(nombreFotoAnimal: "perro", sonidoEspanol: "perro", sonidoIngles: "perroi"),
        Animal(nombreFotoAnimal: "gato", sonidoEspanol: "gato", sonidoIngles: "gatoi"),
        Animal(nombreFotoAnimal: "jirafa", sonidoEspanol: "jirafa", sonidoIngles: "jirafai"),
        Animal(nombreFotoAnimal: "hipopotamo", sonidoEspanol: "hipopotamo", sonidoIngles: "hipopotamoi"),
        Animal(nombreFotoAnimal: "tortuga", sonidoEspanol: "tortuga", sonidoIngles: "tortugai"),
        Animal(nombreFotoAnimal: "caracol", sonidoEspanol: "caracol", sonidoIngles: "caracoli"),
        Animal(nombreFotoAnimal: "cabra", sonidoEspanol: "cabra", sonidoIngles: "cabrai"),
        Animal(nombreFotoAnimal: "serpiente", sonidoEspanol: "serpiente", sonidoIngles: "serpientei"),
        Animal(nombreFotoAnimal: "pajaro", sonidoEspanol: "pajaro", sonidoIngles: "pajaroi"),
        Animal(nombreFotoAnimal: "hormiga", sonidoEspanol: "hormiga", sonidoIngles: "hormigai"),
        Animal(nombreFotoAnimal: "mono", sonidoEspanol: "mono", sonidoIngles: "monoi"),
        Animal(nombreFotoAnimal: "gacela", sonidoEspanol: "gacela", sonidoIngles: "gacelai"),
        Animal(nombreFotoAnimal: "oso", sonidoEspanol: "oso", sonidoIngles: "osoi"),
        Animal(nombreFotoAnimal: "cerdo", sonidoEspanol: "cerdo", sonidoIngles: "ardillai"),
        Animal(nombreFotoAnimal: "camello", sonidoEspanol: "camello", sonidoIngles: "camelloi"),
        Animal(nombreFotoAnimal: "conejo", sonidoEspanol: "conejo", sonidoIngles: "conejoi"),
        Animal(nombreFotoAnimal: "gallina", sonidoEspanol: "gallina", sonidoIngles: "gallinai"),
        Animal(nombreFotoAnimal: "gallo", sonidoEspanol: "gallo", sonidoIngles: "galloi"),
        Animal(nombreFotoAnimal: "pollo", sonidoEspanol: "pollo", sonidoIngles: "polloi"),
        Animal(nombreFotoAnimal: "vaca", sonidoEspanol: "vaca", sonidoIngles: "vacai"),
        Animal(nombreFotoAnimal: "koala", sonidoEspanol: "koala", sonidoIngles: "koalai"),
        Animal(nombreFotoAnimal: "zorro", sonidoEspanol: "zorro", sonidoIngles: "zorroi"),
        Animal(nombreFotoAnimal: "iguana", sonidoEspanol: "iguana", sonidoIngles: "iguanai"),
        Animal(nombreFotoAnimal: "cocodrilo", sonidoEspanol: "cocodrilo", sonidoIngles: "cocodriloi"),
        Animal(nombreFotoAnimal: "tiburon", sonidoEspanol: "tiburon", sonidoIngles: "tiburoni"),
        Animal(nombreFotoAnimal: "pez", sonidoEspanol: "pez", sonidoIngles: "pezi"),
        Animal(nombreFotoAnimal: "toro", sonidoEspanol: "toro", sonidoIngles: "toroi"),
        Animal(nombreFotoAnimal: "ballena", sonidoEspanol: "ballena", sonidoIngles: "ballenai"),
        Animal(nombreFotoAnimal: "delfin", sonidoEspanol: "delfin", sonidoIngles: "delfini"),
        Animal(nombreFotoAnimal: "lagartija", sonidoEspanol: "lagartija", sonidoIngles: "lagartijai"),
        Animal(nombreFotoAnimal: "cangrejo", sonidoEspanol: "cangrejo", sonidoIngles: "cangrejoi"),

    ]
}


