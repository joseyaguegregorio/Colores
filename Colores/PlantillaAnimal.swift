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

        var animal: Animal

        var body: some View {
            Button(action: {

                playSound(sound: self.idiomaPulsado ? self.animal.sonidoEspanol : self.animal.sonidoIngles, type: "wav")
            }) {
                Image(animal.nombreFotoAnimal).renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().scaledToFit().clipShape(Circle())
//                    .frame(width: 180, height: 180)
                    .scaledToFit()
            }



                }


            }




//struct PlantillaAnimal_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantillaAnimal()
//    }
//}
