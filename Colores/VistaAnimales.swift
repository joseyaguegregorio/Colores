//
//  VistaAnimales.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct VistaAnimales: View {
    @Binding var idiomaPulsado: Bool
    var body: some View {
        VStack {
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "lobo", nombreIngles: "loboi", imagenFondo: "lobo")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rana", nombreIngles: "ranai", imagenFondo: "rana")

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cebra", nombreIngles: "cebrai", imagenFondo: "cebra")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "gorila", nombreIngles: "gorilai", imagenFondo: "gorila")

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "pinguino", nombreIngles: "pinguinoi", imagenFondo: "pinguino")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "elefante", nombreIngles: "elefantei", imagenFondo: "elefante")

            }



        }
    }
}
