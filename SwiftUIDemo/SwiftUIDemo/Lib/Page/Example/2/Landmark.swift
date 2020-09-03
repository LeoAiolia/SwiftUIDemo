//
//  LandMark.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
}

extension Int {
    var desc: String { return "id: \(self)" }
}
