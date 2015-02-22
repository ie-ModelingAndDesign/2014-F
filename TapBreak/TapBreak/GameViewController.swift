//
//  GameViewController.swift
//  TapBreak
//
//  Created by Haruki Irei on 2014/12/04.
//  Copyright (c) 2014年 Modering-Team-F. All rights reserved.
//

import UIKit
import SpriteKit

extension SKNode {
    class func unarchiveFromFile(file : NSString) -> SKNode? {
        if let path = NSBundle.mainBundle().pathForResource(file, ofType: "sks") {
            var sceneData = NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe, error: nil)!
            var archiver = NSKeyedUnarchiver(forReadingWithData: sceneData)
            
            archiver.setClass(self.classForKeyedUnarchiver(), forClassName: "SKScene")
            let scene = archiver.decodeObjectForKey(NSKeyedArchiveRootObjectKey) as StartScene
            archiver.finishDecoding()
            return scene
        } else {
            return nil
        }
    }
}

class GameViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var scene: StartScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        scene = StartScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
        
        
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}