//
//  ResultScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/01/15.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import SpriteKit


class ResultScene: SKScene {
    var resultLabel : SKLabelNode
    override init(size: CGSize) {
        resultLabel = SKLabelNode(fontNamed: "TimeUp")
        resultLabel.text = "TimeUp"
        resultLabel.fontColor = UIColor.redColor()
        resultLabel.fontSize = 50
        resultLabel.position = CGPoint(x: 100, y: 100)
        resultLabel.name = "TimeUp"
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        addChild(resultLabel)
    }
    
    /*override func didMoveToView(view: SKView) {
    
    resultLabel = SKLabelNode(fontNamed: "Copperplate")
    resultLabel.text = "Start"
    resultLabel.fontSize = 50
    resultLabel.position = CGPoint(x: 512, y: 300)
    resultLabel.name = "Start"
    self.addChild(resultLabel)
    }*/
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(resultLabel.containsPoint(location)){
                var Sscene: SKScene
                Sscene = StartScene(size: size)
                self.view?.presentScene(Sscene)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}