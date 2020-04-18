//
//  PlantillaAnimal.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct PlantillaAnimal: View {
     @Binding var idiomaPulsado: Bool

        var nombreEspanol: String
        var nombreIngles: String
        var imagenFondo: String

        var body: some View {
            Button(action: {
                //Cada click cambiaria de idioma
    //            self.idiomaPulsado.toggle()
                playSound(sound: self.idiomaPulsado ? self.nombreEspanol : self.nombreIngles, type: "m4a")
            }) {
                Image(imagenFondo).renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().scaledToFit().clipShape(Circle()).padding(.bottom,35).padding(.top,15)
            }



                }


            }




//struct PlantillaAnimal_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantillaAnimal()
//    }
//}
