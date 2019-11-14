//
//  ViewController.swift
//  playVideoAVkit
//
//  Created by Apple on 11/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
//import AVFoundation
import AVKit


class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch begin")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     print("Touch ended")
    }
    
    
    @IBAction func onclickPlayVideo(_ sender: Any) {
        guard let path = Bundle.main.path(forResource: "sampleVideo", ofType: "mp4") else { return }
        let videoUrl = URL(fileURLWithPath: path) //url from path
        
        let player = AVPlayer(url: videoUrl) // avplay from url
        
        let playerViewcontroller = AVPlayerViewController() // create an avplayer
        
        playerViewcontroller.player = player  //asgin playervc = player that created
        
        present(playerViewcontroller, animated: true) { //present it
            playerViewcontroller.player?.play()
        }
    }
}

