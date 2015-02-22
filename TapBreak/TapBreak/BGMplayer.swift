//
//  BGMplayer.swift
//  TapBreak
//
//  Created by Haruki Irei on 2015/02/22.
//  Copyright (c) 2015年 Modering-Team-F. All rights reserved.
//

import AVFoundation
import SpriteKit

class BGMplayer:AVAudioPlayer{
    var BGMplayer : AVAudioPlayer!
    func BGMimport(bgmname: String,myscene: SKScene){
        let url = NSBundle.mainBundle().URLForResource(
            bgmname, withExtension: nil)
        if(url == nil){
            println("Could not found file:\(bgmname)")
            return
        }
    
        var error: NSError? = nil
        BGMplayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        if (BGMplayer == nil) {
            println("Could not create audio player: \(error!)")
            return
        }
        BGMplayer.numberOfLoops = -1
        BGMplayer.prepareToPlay()
        BGMplayer.play()
    }
    /*func BGMstop(){
        BGMplayer.stop()
    }*/
}