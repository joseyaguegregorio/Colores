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
    var opacidad: Double = 0.1
    var numero: String

        var body: some View {
            Button(action: {
                //Cada click cambiaria de idioma
    //            self.idiomaPulsado.toggle()
                playSound(sound: self.idiomaPulsado ? self.nombreEspanol : self.nombreIngles, type: "wav")



            }) {
                ZStack{
                    Circle().fill(colorFondo).opacity(opacidad).scaledToFit()
                    Text(numero).font(.system(size: 70)).foregroundColor(.black)


                    }
                .frame(width: 120, height: 120)
                 .padding(.horizontal, -2)


            }

        }
    }


//struct PlantillaNumero_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantillaNumero()
//    }
//}
