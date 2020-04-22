//
//  VistaVocales.swift
//  Colores
//
//  Created by Jose María Yagüe on 19/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct VistaVocales: View {
    @Binding var idiomaPulsado: Bool
    var body: some View {
        VStack{

            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "asound", nombreIngles: "asoundi", numero: "A")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "esound", nombreIngles: "esoundi", numero: "E")


            }

            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "isound", nombreIngles: "isoundi", numero: "I")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "osound", nombreIngles: "osoundi", numero: "O")


            }
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "usound", nombreIngles: "usoundi", numero: "U")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "ssound", nombreIngles: "ssoundi", numero: "S")




            }

        }
    }
}


