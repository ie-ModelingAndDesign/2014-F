//
//  GameScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2014/12/04.
//  Copyright (c) 2014年 Modering-Team-F. All rights reserved.
//

import SpriteKit
import UIKit

class GameScene: SKScene {
    var maru : SKSpriteNode
    var desk : SKSpriteNode
    var Tlimit : SKLabelNode
    var time: Int = 31
    var counter: Int = 0
    var timer : NSTimer!
    var mac : macbook!
    var smoke : SmokeParticle!
    var bgm : BGMplayer!
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    override init(size: CGSize) {
        Tlimit = SKLabelNode(fontNamed: "limit")
        maru = SKSpriteNode(imageNamed: "macbook")
        desk = SKSpriteNode(imageNamed: "desk.png")
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)

    }
    override func didMoveToView(view: SKView) {
        
        maru.alpha = 0
        maru.position = CGPoint(x: 55, y: 202)
        maru.zPosition = 2
        maru.xScale = 0.37
        maru.yScale = 0.37
        maru.anchorPoint = CGPoint(x: 0, y: 0)
        maru.name = name
        self.addChild(maru)
        
        mac = macbook()
        mac.show("macbook",myscene: self)
        
        bgm = BGMplayer()
        bgm.BGMimport("bgm_maoudamashii_cyber07-1.mp3",myscene:self)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "update", userInfo: nil, repeats: true)
        
        //let desk = SKSpriteNode(imageNamed: "desk.png")
        desk.alpha = 1
        desk.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-250);
        desk.zPosition = 0
        desk.xScale = 1
        desk.yScale = 1.8
        desk.name = "Desk"
        self.addChild(desk)
        
    }
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
                bgm = BGMplayer()
                bgm = nil
                
                timer.invalidate()
                
                var Rscene: SKScene
                Rscene = ResultScene(size: size)
                Rscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Down, duration: 0.5)
                self.view?.presentScene(Rscene, transition:TransitionEffect)
            }
        }
        if(counter > 246){
            bgm = BGMplayer()
            bgm = nil
            var Rscene: SKScene
            Rscene = ResultScene(size: size)
            Rscene.size = self.frame.size
            let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Down, duration: 0.5)
            self.view?.presentScene(Rscene, transition:TransitionEffect)
        }
        let ud1 = NSUserDefaults.standardUserDefaults()
        ud1.setInteger(time, forKey: "Tscore")
        println("\(time)")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches {
            let location = touch.locationInNode(mac)
            if(maru.containsPoint(location)){
                
                counter++
                // 再生データの作成.
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("short_punch1.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
                println("touched \(counter) \(mac.name)")
                
                
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
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-break4.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            if(counter == 180){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook7",myscene: self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-crack1.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
            }
            if(counter == 200){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook8",myscene: self)
                smoke = SmokeParticle()
                smoke.makeSmoke(self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-crack1.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
                bgm = BGMplayer()
                bgm = nil
                if(bgm == nil){
                    bgm = BGMplayer()
                    bgm.BGMimport("BGM_4.wav",myscene:self)
                }
                
            }
            if(counter == 215){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("macbook9",myscene: self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("glass-crack1.mp3", waitForCompletion: true)
                // 再生アクション.
                self.runAction(mySoundAction);
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
            if(counter >= 245){
                mac.remove()
                mac = nil
                mac = macbook()
                mac.show("break.png",myscene: self)
                let mySoundAction: SKAction = SKAction.playSoundFileNamed("sei_ge_garasu_ware01.mp3", waitForCompletion: true)
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