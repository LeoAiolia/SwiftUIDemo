//
//  ViewController.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        let button = UIButton(type: .system)
        button.setTitle("next", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(touchBtn(sender:)), for: .touchUpInside)
        view.addSubview(button)
        
        let button2 = UIButton(type: .system)
        button2.setTitle("wechat", for: .normal)
        button2.setTitleColor(.red, for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: 18)
        button2.frame = CGRect(x: 100, y: 360, width: 200, height: 50)
        button2.addTarget(self, action: #selector(touchBtn2(sender:)), for: .touchUpInside)
        view.addSubview(button2)
    }
    
    @objc func touchBtn(sender: UIButton) {
        
        let vc = UIHostingController(rootView: ContentView().environmentObject(UserData()))
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func touchBtn2(sender: UIButton) {
        
        let vc = UIHostingController(rootView: Wechat().environmentObject(UserData()))
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
