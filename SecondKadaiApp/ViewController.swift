//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 中村憲佑 on 2020/12/21.
//  Copyright © 2020 kensuke.nakamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    // text_fieldの値をoutlet
    @IBOutlet weak var input_name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Delegateを設定する.
        input_name.delegate = self
    }
      
    
    // segueから遷移先のResultViewControllerを取得する
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているxに値を代入して渡す
        //ここの最後に「!」をつける必要があるというエラーでてこづった。
        //https://egg-is-world.com/2016/01/29/swift2-uitextfield-text/ 参考にしたサイト
        
        resultViewController.x = input_name.text!
    }
    
    // 他の画面から segue を使って戻ってきた時に呼ばれる
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    
    }
}
