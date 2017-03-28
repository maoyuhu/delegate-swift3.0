//  secondViewController.swift
//  代理传值
//  Created by maoxiaohu on 17/3/28.
//  Copyright © 2017年 rss. All rights reserved.
//

import UIKit

// 1 写协议
protocol secondDelegate{

    func passValue(name:String,pass:String)
    
}
class secondViewController: UIViewController {

    //2 定代理 要加上问号
    var delegate : secondDelegate?
    
    var nameTF :UITextField = UITextField()
    var passTF :UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        setupUI()
        
    }
    func setupUI()
    {
        let nameLab  = UILabel()
        nameLab.frame = CGRect.init(x: 50, y: 120, width: 50, height: 21)
        nameLab.text = "姓名"
        self.view.addSubview(nameLab)
        
        let nameTf = UITextField()
        nameTf.frame = CGRect.init(x: nameLab.frame.maxX+20, y: 120, width: 100, height: 21)
        nameTf.placeholder = "请输入账号"
        nameTF = nameTf
        self.view.addSubview(nameTf)
        
        
        let passLab = UILabel()
        passLab.frame = CGRect.init(x: 50, y: 150, width: 50, height: 21)
        passLab.text = "密码"
        self.view.addSubview(passLab)
        
        let passTf = UITextField()
        passTf.frame = CGRect.init(x: passLab.frame.maxX+20, y: 150, width: 100, height: 21)
        passTf.placeholder = "请输入密码"
        passTF = passTf
        self.view.addSubview(passTf)
        
        let btn = UIButton()
        btn.frame = CGRect.init(x: passLab.frame.maxX+10, y: passLab.frame.maxY+20, width: 100, height: 32)
        btn.setTitle("返回", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(btnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    func btnClick(btn:UIButton) {
        //3 传值过去
        delegate?.passValue(name: nameTF.text!, pass: passTF.text!)
        self.dismiss(animated: true) {
            
            
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
