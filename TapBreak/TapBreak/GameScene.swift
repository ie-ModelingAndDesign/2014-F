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
        maru.position = CGPoint(x: 50, y: 130)
        maru.xScale = 0.4
        maru.yScale = 0.4
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
            if(maru.name == "macbook"){
                // 再生データの作成.
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("short_punch1.mp3", waitForCompletion: true)
                
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            if(counter == 10){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook3")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook3"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 20){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook4")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook4"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 30){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook5")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook5"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 40){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook6")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook6"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 50){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook7")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook7"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 60){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook8")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook8"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 70){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook9")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook9"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter == 80){
                //addBlack(maru)
                maru.removeFromParent()
                maru = SKSpriteNode(imageNamed: "macbook10")
                maru.alpha = 1
                maru.position = CGPoint(x: 53, y: 135)
                maru.xScale = 0.4
                maru.yScale = 0.4
                maru.anchorPoint = CGPoint(x: 0, y: 0)
                maru.name = "macbook10"
                //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
                addChild(maru)
            }
            if(counter >= 90){
                var Rscene: SKScene
                Rscene = ResultScene(size: size)
                self.view?.presentScene(Rscene)
            }
            
        }
    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}