//
//  PlantillaVocales.swift
//  Colores
//
//  Created by Jose María Yagüe on 19/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct PlantillaVocales: View {
    @Binding var idiomaPulsado: Bool

    var nombreEspanol: String
    var nombreIngles: String
    var colorFondo: Color = Color.gray
    var opacidad: Double = 0.1
    var numero: String

    var body: some View {
        Button(action: {
            //Cada click cambiaria de idioma
            //            self.idiomaPulsado.toggle()
            playSound(sound: self.idiomaPulsado ? self.nombreEspanol : self.nombreIngles, type: "m4a")



        }) {
            ZStack{
                Circle().fill(colorFondo).opacity(opacidad)
                Text(numero).font(.system(size: 70)).foregroundColor(.black)

            }.offset(x: 0, y: -20)
            //                .padding(.bottom,10)

        }

    }
}

