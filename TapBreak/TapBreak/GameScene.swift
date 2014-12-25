//
//  GameScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2014/12/04.
//  Copyright (c) 2014年 Modering-Team-F. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var maru : SKSpriteNode
    var counter: Int = 0
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    override init(size: CGSize) {
        maru = SKSpriteNode(imageNamed: "macbook")
        maru.alpha = 1
        maru.position = CGPoint(x: 100, y: 100)
        maru.xScale = 0.3
        maru.yScale = 0.3
        maru.anchorPoint = CGPoint(x: 0, y: 0)
        maru.name = "macbook"
        //maru.size = CGSize(width: 100, height: 100)
        super.init(size: size)
        backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        addChild(maru)
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches {
            //let touch: AnyObject = touches.anyObject()!
            let location = touch.locationInNode(self)
            //let touchedNode = self.containsPoint(location)
            if(maru.containsPoint(location)){
                counter += 1
                
                println("touched \(maru.name) \(counter)")
            }
            if(counter == 10){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "Circle")
                maru.alpha = 1
                maru.position = CGPoint(x: 100, y: 100)
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "Circle"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 20){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "Batsu")
                maru.alpha = 1
                maru.position = CGPoint(x: 100, y: 100)
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "Batsu"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }

        }
    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}