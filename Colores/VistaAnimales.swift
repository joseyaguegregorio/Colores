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
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "lobo")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "rana")

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "cebra")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "gorila")

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "pinguino")
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", imagenFondo: "elefante")

            }



        }
    }
}
