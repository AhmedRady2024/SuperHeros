//
//  Soundplayer.swift
//  SuperHeros
//
//  Created by Ahmed Rady on 13/06/2024.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func Playsound(sound:String  , type : String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        }catch{
            print("could not find file")
        }
    }
    
    
}
