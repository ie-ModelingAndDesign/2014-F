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
    override func didMoveToView(view: SKView) {
        let ud = NSUserDefaults.standardUserDefaults()
        var score = ud.integerForKey("score")
        var hi_score = ud.integerForKey("hi_score")
        
        let scoreLabel = SKLabelNode(fontNamed:"Copperplate")
        scoreLabel.text = "SCORE:\(score)";
        scoreLabel.fontColor = UIColor.redColor()
        scoreLabel.fontSize = 72;
        scoreLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(scoreLabel)
        
        if score > hi_score {
            ud.setInteger(score, forKey: "hi_score")
            hi_score = score
        }
        
        // ハイスコアを表示。
        let hiLabel = SKLabelNode(fontNamed:"Copperplate")
        hiLabel.text = "過去最高得点:\(hi_score)";
        hiLabel.fontColor = UIColor.redColor()
        hiLabel.fontSize = 36;
        hiLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)-100);
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        self.addChild(hiLabel)
        
        /*resultLabel = SKLabelNode(fontNamed: "TimeUp")
        resultLabel.text = "TimeUp"
        resultLabel.fontColor = UIColor.redColor()
        resultLabel.fontSize = 50
        resultLabel.position = CGPoint(x: 100, y: 100)
        resultLabel.name = "TimeUp"
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        self.addChild(resultLabel)*/
    }
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
                /*let SScene = StartScene(size: self.scene!.size)
                
                // 水平方向にドアをクローズして遷移させるエフェクトを作る.
                let TransitionEffect = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                
                // 遷移先のシーンと遷移前のシーンのサイズを合わせる.
                SScene.size = self.frame.size
                
                // シーンを遷移させる.
                self.view?.presentScene(SScene, transition: TransitionEffect)*/
                var Sscene: SKScene
                Sscene = StartScene(size: size)
                Sscene.size = self.frame.size
                let TransitionEffect = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                self.view?.presentScene(Sscene, transition: TransitionEffect)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}