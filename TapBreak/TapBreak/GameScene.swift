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
        maru = SKSpriteNode(imageNamed: "Black")
        maru.alpha = 0.2
        maru.position = CGPoint(x: 100, y: 100)
        maru.name = "Black"
        //maru.size = CGSize(width: 100, height: 100)
        super.init(size: size)
        backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        addChild(maru)
    }
    /*func addBlack(size: CGSize) ->CGSize{
        
        maru = SKSpriteNode(imageNamed: "Black")
        maru.alpha = 0.5
        maru.position = CGPoint(x: 100, y: 100)
        maru.name = "Black"
        //super.init(size: size)
        backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        addChild(maru)
        return size
    }*/
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        //var out : SKSpriteNode
        //var out: SKSpriteNode =  addBlack()
        let touch: AnyObject = touches.anyObject()!
        let location = touch.locationInNode(maru)
        let touchedNode = self.nodeAtPoint(location)
        if(touchedNode.name == "Black"){
            counter += 1
            println("touched Black \(counter)")
        }
        if(counter == 10){
            //addBlack(maru)
            maru = SKSpriteNode(imageNamed: "Black")
            maru.alpha = 0.2
            maru.position = CGPoint(x: 100, y: 100)
            maru.name = "Black"
            //backgroundColor = SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
            addChild(maru)
        }
    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}