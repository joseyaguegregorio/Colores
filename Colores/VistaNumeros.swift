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
//    var jose: [AnyView] = [VistaVocales(idiomaPulsado: $idiomaPulsado),VistaNumeros(idiomaPulsado: $idiomaPulsado)]
    var body: some View {
        VStack{
            HStack{

                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cero", nombreIngles: "ceroi", numero: "0")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "uno", nombreIngles: "unoi", numero: "1")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "dos", nombreIngles: "dosi", numero: "2")
                
            }

            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "tres", nombreIngles: "tresi", numero: "3")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cuatro", nombreIngles: "cuatroi", numero: "4")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cinco", nombreIngles: "cincoi", numero: "5")

            }
        

            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "seis", nombreIngles: "seisi", numero: "6")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "siete", nombreIngles: "sietei", numero: "7")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "ocho", nombreIngles: "ochoi", numero: "8")


            }
            HStack{
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "nueve", nombreIngles: "nuevei", numero: "9")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "diez", nombreIngles: "diezi", numero: "10")
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "once", nombreIngles: "oncei", numero: "11")



            }
            Spacer()
            
            }
    }
}

//class eh {
//    var jose: some View
//    init()
//
//}
//struct VistaNumeros_Previews: PreviewProvider {
//    static var previews: some View {
//        VistaNumeros()
//    }
//}
