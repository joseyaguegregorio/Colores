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
            Spacer()
            HStack{
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[1])
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[2])
                Spacer()

            }
            Spacer()
            HStack{
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[3])
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[4])
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[5])
                Spacer()
                PlantillaAnimal(idiomaPulsado: $idiomaPulsado, animal: animales.arrayAnimales[6])
                Spacer()

            }
            Spacer()


        }
        
    }
}
