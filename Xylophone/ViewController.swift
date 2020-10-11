//
//  ViewController.swift
//  Xylophone
//
//  Created by Mighri Radhi on 28/06/2020.
//  Copyright © 2020 Mighri Radhi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender) // "sender" represents the input-variable(Button) of the function
//       print(sender.currentTitle)
//        print(sender.titleLabel?.text)
//        print(sender.title(for: .normal))
        print("Start")

        sender.alpha = 0.5

        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        
        playSound(selectedSound: sender.currentTitle!)
            
        print("End")
    }
    
    func playSound(selectedSound : String) {
        let url = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
}

//import UIKit
//
//import AVFoundation //AudioVisual foundatinal module
//
//class ViewController: UIViewController {
//
//    var player: AVAudioPlayer?
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//        playSound()
//    }
//
//
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true) // playback : get the sound played even when our iphone is silent
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//            guard let player = player else { return }
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
//}
//
