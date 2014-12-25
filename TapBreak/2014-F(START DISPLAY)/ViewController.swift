//
//  ViewController.swift
//  2014-F(START DISPLAY)
//
//  Created by Takara Tsubasa on 2014/12/07.
//  Copyright (c) 2014年 Takara Tsubasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myButtonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,250,150))
        
        // Labelに文字を代入.
        myLabel.text = "ゲームタイトル"
        
        //文字のフォントサイズを指定.
        myLabel.font = UIFont.systemFontOfSize(CGFloat(32))
        
        // 文字の色を青にする.
        myLabel.textColor = UIColor.blueColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 150)
        
        // Viewの背景色を青にする.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
    
        // ボタンの生成する.
        myButtonNext = UIButton(frame: CGRectMake(0,0,120,50))
        myButtonNext.backgroundColor = UIColor.greenColor();
        myButtonNext.layer.masksToBounds = true
        myButtonNext.setTitle("START", forState: .Normal)
        myButtonNext.layer.cornerRadius = 20.0
        myButtonNext.layer.position = CGPoint(x: self.view.bounds.width/2 , y:400)
        myButtonNext.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // ボタンを追加する.
        self.view.addSubview(myButtonNext);
    }
    
    func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        
        // アニメーションを設定する.
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        // Viewの移動する.
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}