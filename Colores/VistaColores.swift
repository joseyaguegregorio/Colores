//
//  VistaColores.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct VistaColores: View {
    @Binding var idiomaPulsado: Bool
    var body: some View {
        VStack {
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", colorFondo: Color.red)
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", colorFondo: Color.blue)

            }
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "verde", nombreIngles: "verdei", colorFondo: Color.green)
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "marron", nombreIngles: "marroni", colorFondo: Color.yellow)

            }
            HStack{
                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rosa", nombreIngles: "rosai", colorFondo: Color.pink, opacidad: 0.5)

                PlantillaColor(idiomaPulsado: $idiomaPulsado, nombreEspanol: "negro", nombreIngles: "negroi", colorFondo: Color.black)

            }
            
            
            
        }
        
    }
}

//struct VistaColores_Previews: PreviewProvider {
//    static var previews: some View {
//        VistaColores()
//    }
//}
