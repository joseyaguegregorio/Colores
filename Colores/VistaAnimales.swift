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
    @EnvironmentObject var animales: baseDatosAnimales
    var body: some View {
        VStack {
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[1])
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[2])

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[3])
               PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[4])

            }
            HStack{
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[5])
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[6])

            }



        }
    }
}
