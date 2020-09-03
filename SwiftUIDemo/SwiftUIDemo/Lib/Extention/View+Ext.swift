//
//  View+Ext.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

extension View {
    static var name: String {
        return String(describing: self)
    }
}
