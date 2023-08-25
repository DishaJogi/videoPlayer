//
//  ViewController.swift
//  videoPlayer
//
//  Created by admin on 18/08/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerController = AVPlayerViewController()
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let videoString: String? = Bundle.main.path(forResource: "videomp4", ofType: ".mp4")
        if let url = videoString {
            let videourl = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videourl as URL)
            self.playerController.player = self.player
        }
    }
    
    @IBAction func onclickplayVideo(_ sender: UIButton) {
        self.present(self.playerController, animated: true) {
            self.playerController.player?.play()
        }
    }
}

