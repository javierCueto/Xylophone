//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!
    let soundArray=["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSoud(soundPlay : soundArray[sender.tag-1])
    }
    
    func playSoud(soundPlay : String){
        let soundURL = Bundle.main.url(forResource: soundPlay, withExtension: "wav")
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            
        }catch{
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

