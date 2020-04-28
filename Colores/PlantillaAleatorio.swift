//
//  PlantillaAleatorio.swift
//  Colores
//
//  Created by Jose María Yagüe on 22/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI



struct PlantillaAleatorio: View {
    @Binding var idiomaPulsado2: Bool
    @EnvironmentObject var animales: baseDatosAnimales
    @State var contador: Int = 0;



    

    var body: some View {

        Button(action: {

            DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
                playSound(sound: self.idiomaPulsado2 ? self.animales.arrayAnimales[(self.contador + 1) % (self.animales.arrayAnimales.count)].sonidoEspanol : self.animales.arrayAnimales[(self.contador + 1) % (self.animales.arrayAnimales.count)].sonidoIngles, type: "wav")
                self.contador = self.contador + 1
            }





        }) {
            Image(animales.arrayAnimales[self.contador % (self.animales.arrayAnimales.count)].nombreFotoAnimal)
                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 350, height: 350)

            //                    .background(Color.red)



        }.onAppear{
            self.animales.arrayAnimales.shuffle()
            playSound(sound: self.idiomaPulsado2 ? self.animales.arrayAnimales[self.contador % (self.animales.arrayAnimales.count)].sonidoEspanol : self.animales.arrayAnimales[self.contador % (self.animales.arrayAnimales.count)].sonidoIngles, type: "wav")
        }

    }



}

//struct PlantillaAleatorio_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantillaAleatorio(idiomaPulsado2: true, listaAnimales: [
//            Animal(nombreFotoAnimal: "elefante", sonidoEspanol: "elefante", sonidoIngles: "elefantei"),
//            Animal(nombreFotoAnimal: "rana", sonidoEspanol: "rana", sonidoIngles: "ranai"),
//            Animal(nombreFotoAnimal: "gorila", sonidoEspanol: "gorila", sonidoIngles: "gorilai"),
//            Animal(nombreFotoAnimal: "lobo", sonidoEspanol: "lobo", sonidoIngles: "loboi")
//
//        ]).onAppear{
//            print("SIIIIIIIIIIIIIIIII")
//        }
//    }
//}
//


