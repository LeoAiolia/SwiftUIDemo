//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var items: [Landmark] = [
        Landmark(id: 1, name: "name1"),
        Landmark(id: 2, name: "name2"),
        Landmark(id: 3, name: "name3"),
        Landmark(id: 4, name: "name4"),
        Landmark(id: 5, name: "name5"),
        Landmark(id: 6, name: "name6"),
    ]
    
    var body: some View {
        
        NavigationView {
            List(items, id: \.id) { Landmark in
                NavigationLink(destination: LandmarkDetail(landmark: Landmark)) {
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11", "iPhone 8"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
