//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("Animation")) {
                    NavigationLink(destination: LotteryView()) {
                        PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                    }
                }
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                }
                
                Text("123")
            }.navigationBarTitle(Text("Example"), displayMode: .large).navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Tap").foregroundColor(.orange)
            })).listStyle(GroupedListStyle())
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}
#endif
