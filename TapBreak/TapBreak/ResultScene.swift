//
//  ResultScene.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/01/15.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import SpriteKit


class ResultScene: SKScene {
    let ReStartLabel : SKLabelNode
    var score : Int!
    var Tscore : Int!
    var hi_score : Int!
    override init(size: CGSize) {
        ReStartLabel = SKLabelNode(fontNamed: "American Typewriter Bold")
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
    }
    override func didMoveToView(view: SKView) {
        let resultLabel = SKLabelNode(fontNamed: "American Typewriter Bold")
        resultLabel.text = "TIME UP !!"
        resultLabel.fontColor = UIColor.blackColor()
        resultLabel.fontSize = 60
        resultLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y: 400)
        resultLabel.name = "TimeUp"
        self.addChild(resultLabel)
        
        let ud1 = NSUserDefaults.standardUserDefaults()
        var Tscore = ud1.integerForKey("Tscore") * 10
        let ud = NSUserDefaults.standardUserDefaults()
        var score = ud.integerForKey("score")
        var hi_score = ud.integerForKey("hi_score")
        if(Tscore != 0){
            score = score + Tscore
            let BonusLabel = SKLabelNode(fontNamed:"American Typewriter Bold")
            BonusLabel.text = "TIME BONUS:\(Tscore)"
            BonusLabel.fontColor = UIColor.redColor()
            BonusLabel.fontSize = 30
            BonusLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-50)
            self.addChild(BonusLabel)
        }
        
        let scoreLabel = SKLabelNode(fontNamed:"American Typewriter Bold")
        scoreLabel.text = "SCORE:\(score)";
        scoreLabel.fontColor = UIColor.blackColor()
        scoreLabel.fontSize = 50;
        scoreLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(scoreLabel)
        
        if score > hi_score {
            ud.setInteger(score, forKey: "hi_score")
            hi_score = score
        }
        
        // ハイスコアを表示。
        let hiLabel = SKLabelNode(fontNamed:"American Typewriter Bold")
        hiLabel.text = "HIGH SCORE:\(hi_score)"
        hiLabel.fontColor = UIColor.redColor()
        hiLabel.fontSize = 36;
        hiLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-100);
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        self.addChild(hiLabel)
        
        //ReStartLabel = SKLabelNode(fontNamed: "American Typewriter Bold")
        ReStartLabel.text = "RESTART"
        ReStartLabel.fontColor = UIColor.blackColor()
        ReStartLabel.fontSize = 50
        ReStartLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-200)
        self.addChild(ReStartLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        score = 0
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(ReStartLabel.containsPoint(location)){
                
                var Sscene: SKScene
                Sscene = StartScene(size: size)
                Sscene.size = self.frame.size
                let TransitionEffect = SKTransition.pushWithDirection(SKTransitionDirection.Right, duration: 0.5)
                self.view?.presentScene(Sscene, transition: TransitionEffect)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}