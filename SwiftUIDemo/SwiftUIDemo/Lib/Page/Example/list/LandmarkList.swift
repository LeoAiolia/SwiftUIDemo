//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            /*
            List(items, id: \.id) { Landmark in
                NavigationLink(destination: LandmarkDetail(landmark: Landmark)) {
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
            */
            
            List {
                Button(action: {
                    withAnimation(.easeInOut(duration: 4)) {
                        self.userData.showEventIdOnly.toggle()
                    }
                }) {
                    Toggle(isOn: $userData.showEventIdOnly) {
                        Text("only even id")
                    }
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showEventIdOnly || landmark.id % 2 == 0 {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                            
//                            Image(systemName: "chevron.right.circle")
//                            .imageScale(.large)
//                            .padding()
                        }
                    }
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11", "iPhone 8"], id: \.self) { deviceName in
            LandmarkList().environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
