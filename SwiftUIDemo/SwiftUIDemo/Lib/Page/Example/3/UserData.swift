//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
   @Published var showEventIdOnly = false
   @Published var landmarks = [
        Landmark(id: 1, name: "name1"),
        Landmark(id: 2, name: "name2"),
        Landmark(id: 3, name: "name3"),
        Landmark(id: 4, name: "name4"),
        Landmark(id: 5, name: "name5"),
        Landmark(id: 6, name: "name6"),
    ]
}
