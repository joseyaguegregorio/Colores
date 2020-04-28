//
//  VistaColores.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct colorIndividual{
    var nombreEspanol: String
    var nombreIngles: String
    var color: Color

    init(nombre: String, color: Color){
        self.nombreEspanol = nombre
        self.nombreIngles = nombreEspanol+"i"
        self.color = color
    }
}



struct VistaColores: View {
    @Binding var idiomaPulsado: Bool
    @State var baseDatosColores: [colorIndividual] = [
        colorIndividual(nombre: "rojo", color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1)),
        colorIndividual(nombre: "amarillo", color: Color(.sRGB, red: 1, green: 1, blue: 0, opacity: 1)),
        colorIndividual(nombre: "verde", color: Color.green),
        colorIndividual(nombre: "marron", color: Color(.sRGB, red: 0.6, green: 0.4, blue: 0.2, opacity: 1)),
        colorIndividual(nombre: "rosa", color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.3)),
        colorIndividual(nombre: "azul", color: Color(.sRGB, red: 0, green: 1, blue: 1, opacity: 1)),
        colorIndividual(nombre: "negro", color: Color.black),
        colorIndividual(nombre: "morado", color: Color.purple),
        colorIndividual(nombre: "naranja", color: Color(.sRGB, red: 1, green: 0.5, blue: 0, opacity: 1))
    ]

    var body: some View {
        VStack {
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[0].nombreEspanol, nombreIngles:  self.baseDatosColores[0].nombreIngles, colorFondo:  self.baseDatosColores[0].color)
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[1].nombreEspanol, nombreIngles:  self.baseDatosColores[1].nombreIngles, colorFondo:  self.baseDatosColores[1].color)

            }
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[2].nombreEspanol, nombreIngles:  self.baseDatosColores[2].nombreIngles, colorFondo:  self.baseDatosColores[2].color)
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[3].nombreEspanol, nombreIngles:  self.baseDatosColores[3].nombreIngles, colorFondo:  self.baseDatosColores[3].color)

            }
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[4].nombreEspanol, nombreIngles:  self.baseDatosColores[4].nombreIngles, colorFondo:  self.baseDatosColores[4].color)

                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: self.baseDatosColores[5].nombreEspanol, nombreIngles:  self.baseDatosColores[5].nombreIngles, colorFondo:  self.baseDatosColores[5].color)

            }
            
            
            
        }.onAppear{
            self.baseDatosColores.shuffle()
        }
        
    }
}

//struct VistaColores_Previews: PreviewProvider {
//    static var previews: some View {
//        VistaColores()
//    }
//}
