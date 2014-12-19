//
//  SecondViewController.swift
//  2014-F(START DISPLAY)
//
//  Created by Takara Tsubasa on 2014/12/07.
//  Copyright (c) 2014年 Takara Tsubasa. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    var myButtonBefore: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,50))
        
        // 背景色を設定.
        self.view.backgroundColor = UIColor.blackColor()
        
        // UIボタンを作成
        myButtonBefore = UIButton(frame: CGRectMake(0,0,120,50))
        myButtonBefore.backgroundColor = UIColor.redColor();
        myButtonBefore.layer.masksToBounds = true
        myButtonBefore.setTitle("RETURN", forState: .Normal)
        myButtonBefore.layer.cornerRadius = 20.0
        myButtonBefore.layer.position = CGPoint(x: self.view.bounds.width/2 , y:400)
        myButtonBefore.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myButtonBefore);
        
        //  UITextFieldを生成.
        let myTextField: UITextField = UITextField(frame: CGRectMake(0, 0, 150, 30))
        
        // Delegateを設定.
        myTextField.delegate = self
        
        // 枠の線を表示.
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // UITextFieldの表示する位置.
        myTextField.layer.position = CGPointMake(self.view.bounds.width/2, 200)
        
        // 入力された文字を非表示モードにする.
        //myTextField.secureTextEntry = true

        // TextViewをviewに追加する.
        self.view.addSubview(myTextField)
        
        // Labelに文字を代入.
        myLabel.text = "ユーザー名を入力して下さい"
        
        // 文字の色を緑にする.
        myLabel.textColor = UIColor.greenColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 150)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
    
    }
    //
    // ボタンイベント
    //
    func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義.
        let myViewController: UIViewController = ViewController()
        
        // アニメーションを設定.
        myViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // Viewの移動.
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}