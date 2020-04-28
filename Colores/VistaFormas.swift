//
//  VistaFormas.swift
//  Colores
//
//  Created by Jose María Yagüe on 25/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI
struct forma {
    var nombre: String
    var color: Color
    var nombreaudio: String

    init(nombre: String, color: Color, nombreaudio: String){
        self.nombre = nombre
        self.color = color
        self.nombreaudio = nombreaudio
    }
}


struct VistaFormas: View {
    @Binding var idiomaPulsado: Bool
    @State var tamanoFrameHorizontal: CGFloat = 180
    @State var tamano: CGFloat = 158
    @State var paddingvertical: CGFloat  = 43
//    @State var paddinghorizontal: CGFloat  = 0
    @State var baseDatosFormas: [forma] = [
        forma(nombre: "heart.fill",color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.3), nombreaudio: "corazon"),
        forma(nombre: "square.fill", color: .black, nombreaudio: "cuadrado"),
        forma(nombre: "triangle.fill", color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1), nombreaudio: "triangulo"),
        forma(nombre: "suit.diamond.fill", color: Color(.sRGB, red: 1, green: 1, blue: 0, opacity: 1), nombreaudio: "rombo"),
        forma(nombre: "rectangle.fill", color: .gray, nombreaudio: "rectangulo"),
        forma(nombre: "circle.fill", color: Color.green, nombreaudio: "circulo"),
        forma(nombre: "star.fill",color: Color(.sRGB, red: 1, green: 1, blue: 0, opacity: 1), nombreaudio: "estrella"),
        forma(nombre: "arrow.right",color: Color(.green), nombreaudio: "flecha"),
        forma(nombre: "moon.fill", color: Color(.sRGB, red: 0, green: 1, blue: 1, opacity: 1), nombreaudio: "luna")
    ]


    var body: some View {
        VStack(alignment: .center) {
            
            HStack (alignment: .center){
                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[0].nombreaudio : self.baseDatosFormas[0].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[0].nombre)
                        .foregroundColor(self.baseDatosFormas[0].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)
                }
                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[1].nombreaudio : self.baseDatosFormas[1].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[1].nombre)
                        .foregroundColor(self.baseDatosFormas[1].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)
                }
            }.frame(width: 400,  alignment: .center)
            
            HStack(alignment: .center) {

                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[2].nombreaudio : self.baseDatosFormas[2].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[2].nombre)
                        .foregroundColor(self.baseDatosFormas[2].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)
                }

                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[3].nombreaudio : self.baseDatosFormas[3].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[3].nombre)
                        .foregroundColor(self.baseDatosFormas[3].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)

                }
                
            }.frame(width: 300,  alignment: .center)
            HStack (alignment: .center){
                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[4].nombreaudio : self.baseDatosFormas[4].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[4].nombre)
                        .foregroundColor(self.baseDatosFormas[4].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)
                }
                Button(action: {

                    playSound(sound: self.idiomaPulsado ? self.baseDatosFormas[5].nombreaudio : self.baseDatosFormas[5].nombreaudio+"i", type: "wav")
                }) {
                    Image(systemName: self.baseDatosFormas[5].nombre)
                        .foregroundColor(self.baseDatosFormas[5].color)
                        .font(.system(size: tamano))
                        .padding(.vertical,paddingvertical)
                        .frame(width: tamanoFrameHorizontal,alignment: .center)
                    //                        .padding(.horizontal,paddinghorizontal)
                }
            }.frame(width: 300,  alignment: .center)
//            Spacer()
        }.onAppear{
            self.baseDatosFormas.shuffle()
        }
    }
}


struct VistaFormas_Previews: PreviewProvider {

    static var previews: some View {
        VistaFormas(idiomaPulsado: .constant(true), baseDatosFormas: [
            forma(nombre: "heart.fill",color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.3), nombreaudio: "perro"),
            forma(nombre: "square.fill", color: .black, nombreaudio: "perro"),
            forma(nombre: "triangle.fill", color: Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1), nombreaudio: "perro"),
            forma(nombre: "suit.diamond.fill", color: Color(.sRGB, red: 1, green: 1, blue: 0, opacity: 1), nombreaudio: "perro"),
            forma(nombre: "rectangle.fill", color: .gray, nombreaudio: "perro"),
            forma(nombre: "circle.fill", color: Color.green, nombreaudio: "perro"),
            forma(nombre: "star.fill",color: Color(.sRGB, red: 1, green: 1, blue: 0, opacity: 1), nombreaudio: "perro"),
            forma(nombre: "moon.fill", color: Color(.sRGB, red: 0, green: 1, blue: 1, opacity: 1), nombreaudio: "perro")
        ])
    }
}
