//
//  ContentView.swift
//  Colores
//
//  Created by Jose María Yagüe on 13/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {

    @State private var selection = 0
    @State var idiomaPulsadoT: Bool = true
    
    var body: some View {
        TabView(selection: $selection){
            VStack{
                Spacer()
                VistaColores(idiomaPulsado: $idiomaPulsadoT)


                

                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                    }) {
                        Image(systemName: "airplane").font(.system(size:50)).offset(x: 0, y: -1)
                            .foregroundColor(Color.black).opacity(0.7)
                    }
                }
                Spacer()


            }.padding(10).tabItem {
                VStack {
                    Image(systemName: "paintbrush.fill")

                    Text("Colors")
                }
            }.tag(0)





            VStack{

                VistaNumeros(idiomaPulsado: $idiomaPulsadoT)
                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                    }) {
                        Image(systemName: "airplane").font(.system(size:50)).offset(x: 0, y: -19)
                            .foregroundColor(Color.black)
                    }
                }

            }


            


                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "textformat.123")
                        Text("Numbers")
                    }
            }
            .tag(1)
            VStack{
                Spacer()
                VistaAnimales(idiomaPulsado: $idiomaPulsadoT)
                Spacer()
                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                    }) {
                        Image(systemName: "airplane").font(.system(size:50)).offset(x: 0, y: -19)
                        .foregroundColor(Color.black)
                    }
                }

            }

                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise.fill")
                        Text("Animals")
                    }
            }
            .tag(2)
        }.accentColor(.black)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var selection = 0
//
//    var body: some View {
//        TabView(selection: $selection){
//            Text("First View")
//                .font(.title)
//                .tabItem {
//                    VStack {
//                        Image("first")
//                        Text("Jose")
//                    }
//                }
//                .tag(0)
//            Text("Second View")
//                .font(.title)
//                .tabItem {
//                    VStack {
//                        Image("second")
//                        Text("Second")
//                    }
//                }
//                .tag(1)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//  ContentView.swift
//  Colores
//
//  Created by Jose María Yagüe on 13/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//
