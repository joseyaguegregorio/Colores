//
//  PlantillaNumero.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct PlantillaNumero: View {
    @Binding var idiomaPulsado: Bool

        var nombreEspanol: String
        var nombreIngles: String
    var colorFondo: Color = Color.gray
    var opacidad: Double = 0.2
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

                }.padding(.bottom,10)

            }

        }
    }


//struct PlantillaNumero_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantillaNumero()
//    }
//}
