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
            do {
                //Extra para que suene en silentMode
                
               try AVAudioSession.sharedInstance().setCategory(.playback)
            } catch(let error) {
                print(error.localizedDescription)
            }
              //Extra para que suene en silentMode
            audioPlayer?.play()
        }catch{
            print("No encontre sonido")
        }
    }
}
