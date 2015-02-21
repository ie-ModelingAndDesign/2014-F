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
    var Tlimit : SKLabelNode
    var time: Int = 61
    var counter: Int = 0
    var mac : macbook!
    var smoke : SmokeParticle!
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    override init(size: CGSize) {
        Tlimit = SKLabelNode(fontNamed: "limit")
        maru = SKSpriteNode(imageNamed: "macbook")

        super.init(size: size)
        backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)

    }
    override func didMoveToView(view: SKView) {
        mac = macbook()
        mac.show("macbook",myscene: self)
        
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "update", userInfo: nil, repeats: true)
    }
    //var Tlimit : SKLabelNode
    func update() {
        time--
        if(time > -1){
            
            Tlimit.removeFromParent()
            Tlimit = SKLabelNode(fontNamed: "American Typewriter Bold")
            Tlimit.text = "Time:\(time)"
            Tlimit.fontColor = UIColor.redColor()
            Tlimit.fontSize = 50
            Tlimit.position = CGPoint(x:CGRectGetMidX(self.frame), y:600);
            Tlimit.name = "limit"
            self.addChild(Tlimit)
        }else{
            if(time == -1){
                var Rscene: SKScene
                Rscene = ResultScene(size: size)
                Rscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Down, duration: 0.5)
                self.view?.presentScene(Rscene, transition:TransitionEffect)
            }
        }
        println("\(time)")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches {
            //let touch: AnyObject = touches.anyObject()!
            let location = touch.locationInNode(self)
            //let touchedNode = self.containsPoint(location)
            if(maru.containsPoint(location)){
                counter += 1
                // 再生データの作成.
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("short_punch1.mp3", waitForCompletion: true)
                
                // 再生アクション.
                self.runAction(mySoundAction);
                println("touched \(counter)")
            }
            if(counter == 50){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook3",myscene: self)
            }
            if(counter == 90){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook4",myscene: self)
            }
            if(counter == 130){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook5",myscene: self)
            }
            if(counter == 160){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook6",myscene: self)
                
            }
            if(counter == 180){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook7",myscene: self)
            }
            if(counter == 200){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook8",myscene: self)
                smoke = SmokeParticle()
                smoke.makeSmoke(self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-break4.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            if(counter == 215){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook9",myscene: self)
            }
            if(counter == 230){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook10",myscene: self)
                smoke = SmokeParticle()
                smoke.makeSmoke(self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-break2.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            if(counter == 240){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook11",myscene: self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-break2.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            
        }
        let ud = NSUserDefaults.standardUserDefaults()
        ud.setInteger(counter, forKey: "score")
    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}