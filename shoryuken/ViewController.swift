//
//  ViewController.swift
//  shoryuken
//
//  Created by 川田 文香 on 2020/09/06.
//  Copyright © 2020 kwdaaa.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // attak画像表示
    @IBOutlet var sImage: UIImageView!
    
    // 画像の表示配列
    var sImageArray : Array<UIImage> = []
    
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 画像を配列に格納
        while let attakImage = UIImage(named: "attak\(sImageArray.count+1)") {
            sImageArray.append(attakImage)
        }
    }
    


    @IBAction func sButton(_ sender: Any) {
        // アニメーションの適用
        sImage.animationImages = sImageArray
        // 秒数間隔
        sImage.animationDuration = 1
        // 1回繰り返し
        sImage.animationRepeatCount = 1
        // アニメーションを開始
        sImage.startAnimating()
    }
    
}

