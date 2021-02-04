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
    @State var rotation: Bool = true
    @EnvironmentObject var animales: baseDatosAnimales


    
    var body: some View {
        TabView(selection: $selection){



            VStack{
                VistaColores(idiomaPulsado: $idiomaPulsadoT).onAppear{
                }
                HStack{
                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                        playSound(sound: self.idiomaPulsadoT ? "espanol" : "ingles", type: "wav")
                    }) {
                        Image(systemName: "airplane")
                            .rotationEffect(.degrees(idiomaPulsadoT ? 0 : 180))
                            .animation(.easeInOut(duration: 1.0))
                            .font(.system(size:50))
                            .offset(x: idiomaPulsadoT ? -140 : 140)
                            .padding(.horizontal,idiomaPulsadoT ? 170 : 170)
                            .opacity(0.7)
                    }
                }
            }.tabItem {
                VStack {
                    Image(systemName: "paintbrush.fill")
                    Text(idiomaPulsadoT ? "Colores" : "Colors")
                }
            }.tag(0)











            VStack{
                VistaNumeros(idiomaPulsado: $idiomaPulsadoT)

                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                        playSound(sound: self.idiomaPulsadoT ? "espanol" : "ingles", type: "wav")
                    }) {
                        Image(systemName: "airplane")
                            .rotationEffect(.degrees(idiomaPulsadoT ? 0 : 180))
                            .animation(.easeInOut(duration: 1.0))
                            .font(.system(size:50))
                            .offset(x: idiomaPulsadoT ? -140 : 140)
                            .padding(.horizontal,idiomaPulsadoT ? 170 : 170)
                            .opacity(0.7)
                    }
                }
            }
            .font(.title)
            .tabItem {
                VStack {
                    Image(systemName: "textformat.123")
                    Text(idiomaPulsadoT ? "Numeros" : "Numbers")
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
                        playSound(sound: self.idiomaPulsadoT ? "espanol" : "ingles", type: "wav")
                    }) {
                        Image(systemName: "airplane")
                            .rotationEffect(.degrees(idiomaPulsadoT ? 0 : 180))
                            .animation(.easeInOut(duration: 1.0))
                            .font(.system(size:50))
                            .offset(x: idiomaPulsadoT ? -140 : 140)
                            .padding(.horizontal,idiomaPulsadoT ? 170 : 170)
                            .opacity(0.7)
                    }
                }
            }
            .font(.title)
            .tabItem {
                VStack {
                    Image(systemName: "tortoise.fill")
                    Text(idiomaPulsadoT ? "Animales" : "Animals")
                }
            }
            .tag(2)
            .onAppear{
                //Si se modifica un observableObject self.animales.arrayAnimales, este hace que el onApear de la vista PlantillaAleatorio se ejecute, no tiene sentido pero se ejecuta el Onappear de una vista que no ha sido llamada en este caso PlantillaAleatorio
//                self.animales.arrayAnimales.shuffle()
                
            }











            VStack{
                Spacer()
                PlantillaAleatorio(idiomaPulsado2: $idiomaPulsadoT)

                Spacer()
                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                        playSound(sound: self.idiomaPulsadoT ? "espanol" : "ingles", type: "wav")
                    }) {
                        Image(systemName: "airplane")
                            .rotationEffect(.degrees(idiomaPulsadoT ? 0 : 180))
                            .animation(.easeInOut(duration: 1.0))
                            .font(.system(size:50))
                            .offset(x: idiomaPulsadoT ? -140 : 140)
                            .padding(.horizontal,idiomaPulsadoT ? 170 : 170)
                            .opacity(0.7)
                    }
                }

            }

            .font(.title)
            .tabItem {
                VStack {
                    Image(systemName: "ant.fill")
                    Text(idiomaPulsadoT ? "Animales" : "Animals")
                }
            }
            .tag(3)



            




            VStack{
                Spacer()
                VistaFormas(idiomaPulsado: $idiomaPulsadoT)

                Spacer()
                HStack{

                    Button(action: {
                        self.idiomaPulsadoT.toggle()
                        playSound(sound: self.idiomaPulsadoT ? "espanol" : "ingles", type: "wav")
                    }) {
                        Image(systemName: "airplane")
                            .rotationEffect(.degrees(idiomaPulsadoT ? 0 : 180))
                            .animation(.easeInOut(duration: 1.0))
                            .font(.system(size:50))
                            .offset(x: idiomaPulsadoT ? -140 : 140)
                            .padding(.horizontal,idiomaPulsadoT ? 170 : 170)
                            .opacity(0.7)
//                            .background(Color.red)

                    }
                }

            }

            .font(.title)
            .tabItem {
                VStack {
                    Image(systemName: "square.fill.on.circle.fill")
                    Text(idiomaPulsadoT ? "Formas" : "Shapes")
                }
            }
            .tag(4)






        }
        .accentColor(.black)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(baseDatosAnimales())
    }
}

