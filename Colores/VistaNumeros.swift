//
//  VistaNumeros.swift
//  Colores
//
//  Created by Jose María Yagüe on 18/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct VistaNumeros: View {
    @Binding var idiomaPulsado: Bool
    var body: some View {
        VStack {
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", numero: "1")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "2")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "3")
                
            }
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", numero: "4")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "5")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "6")

            }
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", numero: "7")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "8")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "9")

            }
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "rojo", nombreIngles: "rojoi", numero: "10")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "11")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "azul", nombreIngles: "azuli", numero: "0")

            }
            Spacer()
        }
    }
}

//struct VistaNumeros_Previews: PreviewProvider {
//    static var previews: some View {
//        VistaNumeros()
//    }
//}
