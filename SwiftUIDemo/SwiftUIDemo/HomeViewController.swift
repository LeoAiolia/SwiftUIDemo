//
//  HomeViewController.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/5/21.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        self.navigationController?.navigationBar.isHidden = true
        
        let button = UIButton(type: .system)
        button.setTitle("back", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(touchBtn(sender:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func touchBtn(sender: UIButton) {
        
//        let vc = UIHostingController(rootView: ContentView())
//        self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}
