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

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print("Start")
        playSoud(soundPlay : sender.currentTitle!)
        
        sender.alpha=0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha=1
        }
        print("End")
        
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

