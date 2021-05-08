//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    var b: String?
    
    var body: some View {
        HStack {
            Text(landmark.name).lineLimit(2)
            Spacer()
            Text(landmark.id.desc).foregroundColor(Color(white: 0, opacity: 0.6))
//            Image("turtlerock")
//                    .clipShape(Circle())
//                    .overlay(
//                        Circle().stroke(Color.white, lineWidth: 4))
//                    .shadow(radius: 10)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: Landmark(id: 123456789754654, name: "name4564564564578945"))
    }
}
