//
//  StartScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/01/15.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import SpriteKit
import AVFoundation

class StartScene: SKScene {
    var startLabel : SKLabelNode
    var HowToLabel : SKLabelNode
    var bgm : BGMplayer!
    override init(size: CGSize) {
        startLabel = SKLabelNode(fontNamed: "American Typewriter Bold")
        HowToLabel = SKLabelNode(fontNamed: "American Typewriter Bold")
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
    }
    override func didMoveToView(view: SKView) {
        startLabel.text = "Start"
        startLabel.fontColor = UIColor.redColor()
        startLabel.fontSize = 50
        startLabel.position = CGPoint(x: 80, y: 30)
        startLabel.name = "Start"
        self.addChild(startLabel)
        
        HowToLabel.text = "HowTo"
        HowToLabel.fontColor = UIColor.redColor()
        HowToLabel.fontSize = 50
        HowToLabel.position = CGPoint(x: 270, y: 30)
        HowToLabel.name = "HowTo"
        self.addChild(HowToLabel)
        
        let Title = SKSpriteNode(imageNamed: "Title")
        Title.alpha = 1
        Title.position = CGPoint(x:CGRectGetMidX(self.frame)+25, y:CGRectGetMidY(self.frame)+200);
        Title.zRotation = DegreeToRadian(20)
        Title.zPosition = 2
        Title.xScale = 0.27
        Title.yScale = 0.27
        self.addChild(Title)
        let TitleMac = SKSpriteNode(imageNamed: "mactitle")
        TitleMac.alpha = 1
        TitleMac.position = CGPoint(x:CGRectGetMidX(self.frame)-10, y:CGRectGetMidY(self.frame)-50);
        //TitleMac.zRotation = DegreeToRadian(20)
        TitleMac.xScale = 0.5
        TitleMac.yScale = 0.5
        self.addChild(TitleMac)
        
        bgm = BGMplayer()
        bgm.BGMimport("BGM.m4a",myscene:self)
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let ud = NSUserDefaults.standardUserDefaults()
        let ud1 = NSUserDefaults.standardUserDefaults()
        ud.removeObjectForKey("score")
        ud1.removeObjectForKey("Tscore")
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(startLabel.containsPoint(location)){
                bgm = BGMplayer()
                bgm = nil
                let Gscene = GameScene(size: size)
                Gscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Left, duration: 0.5)
                self.view?.presentScene(Gscene, transition: TransitionEffect)
            }
            if(HowToLabel.containsPoint(location)){
                bgm = BGMplayer()
                bgm = nil
                let Howscene = HowTo(size: size)
                Howscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Right, duration: 0.5)
                self.view?.presentScene(Howscene, transition: TransitionEffect)
            }
        }
    }
    
    func DegreeToRadian(Degree : Double!)-> CGFloat{
        
        return CGFloat(Degree) / CGFloat(180.0 * M_1_PI)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}