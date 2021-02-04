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
            Spacer()
            HStack{
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cero", nombreIngles: "ceroi", numero: "0")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "uno", nombreIngles: "unoi", numero: "1")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "dos", nombreIngles: "dosi", numero: "2")
                Spacer()
                
            }
            Spacer()
            HStack{
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "tres", nombreIngles: "tresi", numero: "3")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cuatro", nombreIngles: "cuatroi", numero: "4")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "cinco", nombreIngles: "cincoi", numero: "5")
                Spacer()

            }
            Spacer()

            HStack{
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "seis", nombreIngles: "seisi", numero: "6")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "siete", nombreIngles: "sietei", numero: "7")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "ocho", nombreIngles: "ochoi", numero: "8")
                Spacer()

            }
            Spacer()
            HStack{
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "nueve", nombreIngles: "nuevei", numero: "9")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "diez", nombreIngles: "diezi", numero: "10")
                Spacer()
                PlantillaNumero(idiomaPulsado: $idiomaPulsado, nombreEspanol: "once", nombreIngles: "oncei", numero: "11")
                Spacer()



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
