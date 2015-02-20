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
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = StartScene.unarchiveFromFile("StartScene") as? StartScene {
            
            // ビューを得る.
            let mySkView = self.view as SKView
            
            // FPSを表示させる.
            mySkView.showsFPS = true
            
            // 現在存在するノードの数を表示させる.
            mySkView.showsNodeCount = true
            
            // レンダリングパフォーマンスの設定.
            mySkView.ignoresSiblingOrder = true
            
            // 剛体を表示させる.
            mySkView.showsPhysics = true
            
            // シーンのサイズをスクリーンに見合ったサイズに変える.
            scene.size = mySkView.frame.size
            
            mySkView.presentScene(scene)
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.All.rawValue)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }*/
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