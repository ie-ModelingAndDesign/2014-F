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
    /*override func didMoveToView(view: SKView) {
        startLabel = SKLabelNode(fontNamed: "Start")
        startLabel.text = "Start"
        startLabel.fontColor = UIColor.redColor()
        startLabel.fontSize = 50
        startLabel.position = CGPoint(x: 100, y: 100)
        startLabel.name = "Start"
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        self.addChild(startLabel)
    }*/
    override init(size: CGSize) {
        startLabel = SKLabelNode(fontNamed: "Start")
        startLabel.text = "Start"
        startLabel.fontColor = UIColor.redColor()
        startLabel.fontSize = 50
        startLabel.position = CGPoint(x: 100, y: 100)
        startLabel.name = "Start"
        super.init(size: size)
        backgroundColor = SKColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        self.addChild(startLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches{
            let location = touch.locationInNode(self)
            if(startLabel.containsPoint(location)){
                /*let GScene = GameScene(size: self.scene.size)
                
                // 水平方向にドアをクローズして遷移させるエフェクトを作る.
                let TransitionEffect = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                
                // 遷移先のシーンと遷移前のシーンのサイズを合わせる.
                GScene.size = self.frame.size
                
                // シーンを遷移させる.
                self.view?.presentScene(GScene, transition: TransitionEffect)*/
                let Gscene = GameScene(size: size)
                Gscene.size = self.frame.size
                let TransitionEffect = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                self.view?.presentScene(Gscene, transition: TransitionEffect)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}