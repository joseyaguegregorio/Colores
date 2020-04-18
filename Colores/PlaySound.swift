//
//  PlaySound.swift
//  Colores
//
//  Created by Jose María Yagüe on 13/04/2020.
//  Copyright © 2020 Jose María Yagüe. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?
func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("No encontre sonido")
        }
    }
}
