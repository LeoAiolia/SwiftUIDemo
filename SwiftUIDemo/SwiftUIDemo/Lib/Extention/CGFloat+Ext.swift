//
//  CGfloat.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import UIKit

extension CGFloat {
    
    static let defaultRowHeight: CGFloat = 50
    
    static let border: CGFloat = 1 / UIScreen.main.scale
    
    static var screenWidth: CGFloat { return UIScreen.main.bounds.width }
    static var screenHeight: CGFloat { return UIScreen.main.bounds.height }
    static var screenScale: CGFloat { return UIScreen.main.scale }
    
//    static var horizontalMargin: CGFloat { return screenWidth > 375 ? 20: 16 }
//    static var homeBarHeight: CGFloat { return statusBarHeight > 20 ? 34: 0 }
//    static var statusBarHeight: CGFloat { return MainApp.keyWindow!.statusBarManager.statusBarFrame.height }
}
