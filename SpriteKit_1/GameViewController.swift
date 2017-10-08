//
//  GameViewController.swift
//  SpriteKit_1
//
//  Created by Marcel Harvan on 2017-09-27.
//  Copyright © 2017 The Marcel's fake Company. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation


class GameViewController: UIViewController {
    
    var soundFire: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadGame()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func LoadGame(){
        if (viewIfLoaded != nil) {
            print("View Loaded")
       
            let scene = GameScene(size: view.bounds.size)
            let skView = view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.ignoresSiblingOrder = true
            scene.scaleMode = .resizeFill
            skView.presentScene(scene)
         
        }
    }
    
    
    
    
    
    
}
