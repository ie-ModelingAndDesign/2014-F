//
//  SmokeParticle.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/02/22.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import Spritekit

extension SKEmitterNode {
    
    class func emitterNodeWithName(name: String) -> SKEmitterNode {
        
        return NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource(name, ofType: "sks")!) as SKEmitterNode
        
    }
    
}
class SmokeParticle : SKEmitterNode{
    func makeSmoke(myscene:SKScene){
        var randomX = getRandomNumber(Min: 150, Max: 280)
        var randomY = getRandomNumber(Min: 210, Max: 250)
        var smoke : SKEmitterNode
        smoke = SKEmitterNode.emitterNodeWithName("MacSmoke")
        smoke.position = CGPoint(x: CGFloat(randomX), y: CGFloat(randomY))
        smoke.zPosition = 2
        // シーンに追加.
        myscene.addChild(smoke)
    }
    func getRandomNumber(Min _Min : Float, Max _Max : Float)->Float {
        
        return ( Float(arc4random_uniform(UINT32_MAX)) / Float(UINT32_MAX) ) * (_Max - _Min) + _Min
    }
}
