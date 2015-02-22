//
//  HowTo.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/02/22.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import SpriteKit


import SpriteKit

class HowTo: SKScene {
    var Return : SKLabelNode

    override init(size: CGSize) {
        Return = SKLabelNode(fontNamed: "American Typewriter Bold")
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
    }
    override func didMoveToView(view: SKView) {
        Return.text = "RETURN"
        Return.fontColor = UIColor.redColor()
        Return.fontSize = 30
        Return.position = CGPoint(x: 100, y:620)
        Return.zPosition = 2
        Return.name = "return"
        self.addChild(Return)
        
        let bg = SKSpriteNode(imageNamed: "exp1.png")
        bg.alpha = 1
        bg.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        bg.zPosition = 1
        bg.xScale = 0.5
        bg.yScale = 0.5
        self.addChild(bg)
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(Return.containsPoint(location)){
                let Sscene = StartScene(size: size)
                Sscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Left, duration: 0.5)
                self.view?.presentScene(Sscene, transition: TransitionEffect)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}