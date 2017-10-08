//
//  GameOverScene.swift
//  SpriteKit_1
//
//  Created by Marcel Harvan on 2017-09-27.
//  Copyright © 2017 The Marcel's fake Company. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    func backgroundImage (){
        let background = SKSpriteNode(imageNamed: "bg")
        background.size = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.anchorPoint = CGPoint(x: 0.5,y: 0.5)
        background.zPosition = -1
        
        addChild(background)
    }
    
    
    init(size: CGSize, won:Bool, monstersKilled: Int) {

        super.init(size: size)
   
        let message = won ? "You Won!" : "You Lose :["
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.white
        label.position = CGPoint(x: size.width/2, y: size.height * 0.5)
        addChild(label)
        
        let monstersKilled = monstersKilled
 
        let labScore = SKLabelNode(fontNamed: "Chalkduster")
        labScore.text = ("You have killed: ") + String(monstersKilled) + (" monsters!!")
        print(monstersKilled)
        labScore.fontSize = 25
        labScore.fontColor = SKColor.white
        labScore.position = CGPoint(x: size.width/2, y: size.height * 0.3)
        addChild(labScore)

//        backgroundColor = UIColor(red:0.69, green:0.38, blue:0.13, alpha:1.0)
        backgroundImage()

    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("func")
        
        run(SKAction.sequence([
            SKAction.wait(forDuration: 0.0),
            SKAction.run() {
                             
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                let scene = GameScene(size: self.size)
                self.view?.presentScene(scene, transition:reveal)
            }
            ]))
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
}
