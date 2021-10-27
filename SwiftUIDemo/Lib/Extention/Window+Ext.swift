//
//  window.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import UIKit

struct MainApp {
    
    /// keyWindow
    // 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes
    //  https://stackoverflow.com/questions/57134259/how-to-resolve-keywindow-was-deprecated-in-ios-13-0
    public static var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first ?? nil
    }
}
