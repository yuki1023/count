//
//  ViewController.swift
//  count
//
//  Created by 樋口裕貴 on 2020/03/11.
//  Copyright © 2020 Yuki Higuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //使用するデータの宣言
    var number: Int = 0
    //変数の書き方
    //var 変数名: データの方＝初期値
    
    @IBOutlet var label: UILabel!
    //IB=interfacebuilder Outlet プログラムから命令を受け取るパーツ
    //var 変数名: データの型!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ud = UserDefaults.standard
        number = ud.integer(forKey: "number")
        label.text = String(number)
        
     
        
       
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        // Do any additional setup after loading the view.
    
    
    @IBAction func plus(){
    // number に１を足したものをnumberに再代入
     number = number + 1
        print(number)
    //labelのtext部分に文字を変換したnumberを入れる。
    label.text = String(number)
        
    
        let ud = UserDefaults.standard
        ud.set(number, forKey: "number")
        ud.synchronize()
        
        }

}





