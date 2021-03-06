//
//  PlantillaColor.swift
//  pruebas
//
//  Created by Jose María Yagüe on 16/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct PlantillaColor: View {
    @Binding var idiomaPulsado: Bool

    var nombreEspanol: String
    var nombreIngles: String
    var colorFondo: Color
    var opacidad: Double = 1.0

    var body: some View {
        Button(action: {
            //Cada click cambiaria de idioma
//            self.idiomaPulsado.toggle()
            playSound(sound: self.idiomaPulsado ? self.nombreEspanol : self.nombreIngles, type: "wav")



        }) {
            ZStack{
                Circle()
                    .fill(colorFondo)
                    .opacity(opacidad)
//                    .frame(width: 180, height: 190)
                    .scaledToFit()
            }

        }

    }
}


//struct PlantillaColor_Previews: PreviewProvider {
//    static var previews: some View {
//                    PlantillaColor(idiomaPulsado: $idiomaPulsadoT, nombreEspanol: "amarillo", nombreIngles: "amarilloi", colorFondo: Color.yellow, texto: "1")
//    }
//}
