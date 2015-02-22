//
//  macbook.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/02/20.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import Spritekit

class macbook: SKSpriteNode {
    var obj : SKSpriteNode!
    //var Myscene : SKScene!
    func show(name: String,myscene:SKScene){
        //Myscene = myscene
        obj = SKSpriteNode(imageNamed: name)
        obj.alpha = 1
        obj.position = CGPoint(x: 45, y: 200)
        obj.zPosition = 2
        obj.xScale = 0.4
        obj.yScale = 0.4
        obj.anchorPoint = CGPoint(x: 0, y: 0)
        obj.name = name
        myscene.addChild(obj)
    }
    func remove(){
        obj.removeFromParent()
        obj = nil
    }
}
