//
//  StartScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/01/15.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import SpriteKit

class StartScene: SKScene {
    var startLabel : SKLabelNode
    override init(size: CGSize) {
        startLabel = SKLabelNode(fontNamed: "Start")
        startLabel.text = "Start"
        startLabel.fontColor = UIColor.redColor()
        startLabel.fontSize = 50
        startLabel.position = CGPoint(x: 100, y: 100)
        startLabel.name = "Start"
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        addChild(startLabel)
    }
    
    /*override func didMoveToView(view: SKView) {
        
        startLabel = SKLabelNode(fontNamed: "Copperplate")
        startLabel.text = "Start"
        startLabel.fontSize = 50
        startLabel.position = CGPoint(x: 512, y: 300)
        startLabel.name = "Start"
        self.addChild(startLabel)
    }*/
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(startLabel.containsPoint(location)){
                var Gscene: SKScene
                Gscene = GameScene(size: size)
                self.view?.presentScene(Gscene)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}