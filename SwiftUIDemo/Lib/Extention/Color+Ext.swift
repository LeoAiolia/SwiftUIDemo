//
//  Color+Ext.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

extension Color {
    var gradient: AngularGradient {
        return AngularGradient(gradient: Gradient(colors: [self]),center: .center)
    }
}
