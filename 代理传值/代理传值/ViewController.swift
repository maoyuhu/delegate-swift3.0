//
//  ViewController.swift
//  代理传值
//
//  Created by maoxiaohu on 17/3/28.
//  Copyright © 2017年 rss. All rights reserved.
//

import UIKit

class ViewController: UIViewController,secondDelegate{ //4 遵守代理协议

    @IBOutlet weak var numTf: UITextField!
    @IBOutlet weak var passTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @IBAction func sure(_ sender: UIButton) {
        
        let secVc = secondViewController()
        //5 设置代理
        secVc.delegate = self
        self.present(secVc, animated: true, completion: nil)
    }
    
    //6 实现代理方法
    func passValue(name: String, pass: String) {
        numTf.text = name
        passTf.text = pass
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
        
    }
}

