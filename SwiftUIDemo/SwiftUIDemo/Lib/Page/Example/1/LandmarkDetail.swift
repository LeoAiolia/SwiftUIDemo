//
//  ExampleView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }.navigationBarTitle(landmark.name)
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: Landmark(id: 0, name: "name1"))
    }
}
