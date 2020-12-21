//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 中村憲佑 on 2020/12/21.
//  Copyright © 2020 kensuke.nakamura. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var x = "名無しの権兵衛"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    
    // xの値を新たに代入して表示
    let result = x
    label.text = "はじめまして \(result) さん"
    
     }

}
