//
//  NavigationButtonPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/6/1.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI
    
struct NavigationButtonPage: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack{
            NavigationLink(
                destination: NavigationButtonPage(),
                label: {
                    Text("NavigationButton").bold()
                        .foregroundColor(.blue)
                        .font(.largeTitle).font(.subheadline)
                        .padding(10)
                        .background(Color.green)
                        .cornerRadius(10.0)
                        .rotationEffect(.degrees(180))
                    
                })
            Spacer(minLength: 20)
            Toggle(isOn: $isOn) {
                Text("toggle").foregroundColor(.blue)
            }.padding(.top, 40)
            .padding(.horizontal, 16)
            
        }.navigationBarTitle(Text("NavigationButton"))
    }
}

struct NavigationButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
