//
//  Prueba.swift
//  Colores
//
//  Created by Jose María Yagüe on 25/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI

struct Prueba: View {
    @State var horizontal: CGFloat = 10
    @State var otro: CGFloat = 180
    @State var size: CGFloat = 100
    @State var tamanoIndividual: CGFloat = 380
    var body: some View {

        VStack (alignment: .center){
            HStack (alignment: .center){
                Button(action: {


                }) {
                    Image(systemName: "triangle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: size))
                        .padding(.vertical,40)
                      
.frame(width: otro,  alignment: .center)
                }
                Button(action: {


                }) {
                    Image(systemName: "square.fill")
                        .foregroundColor(.red)
                        .font(.system(size: size))
                        .padding(.vertical,40)
                        .padding(.horizontal, horizontal)

                }.frame(width: otro,  alignment: .center)
            }.frame(width: 300,  alignment: .center)



            HStack (alignment: .center){
                Button(action: {


                }) {
                    Image(systemName: "rectangle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: size))
                        .padding(.vertical,40)


                        .frame(width: otro,  alignment: .center)

                }
                Button(action: {


                }) {
                    Image(systemName: "square.fill")
                        .foregroundColor(.red)
                        .font(.system(size: size))
                        .padding(.vertical,40)
                        .padding(.horizontal, horizontal)


                }.frame(width: otro,  alignment: .center)
            }.frame(width: tamanoIndividual,  alignment: .center)
        }
    }
}

struct Prueba_Previews: PreviewProvider {
    static var previews: some View {
        Prueba()
    }
}
