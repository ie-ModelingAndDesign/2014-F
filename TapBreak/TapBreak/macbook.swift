//
//  macbook.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/02/20.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import Spritekit

class macbook: SKNode {
    var obj : SKSpriteNode!
    func show(name: String){
        obj.removeFromParent()
        obj = SKSpriteNode(imageNamed: "\(name)")
        obj.alpha = 1
        obj.position = CGPoint(x: 53, y: 135)
        obj.xScale = 0.4
        obj.yScale = 0.4
        obj.anchorPoint = CGPoint(x: 0, y: 0)
        obj.name = "\(name)"
        self.addChild(obj)
    }
}
