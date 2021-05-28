//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Animation")) {
                    NavigationLink(destination: LotteryView()) {
                        PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                    }
                    NavigationLink(
                        destination: LandmarkList(),
                        label: {
                            PageRow(title: "LandmarkList", subTitle: "Example")
                        })
                }
                Section(header: Text("基础控件")) {
                    NavigationLink(destination: TextPage()) {
                        PageRow(title: "Text", subTitle: "TextPage")
                    }
                    
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "TextField", subTitle: "TextFieldPage")
                    }
                }
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                }
                
                Text("123")
            }.navigationBarTitle(Text("Example"), displayMode: .large).navigationBarItems(leading: VStack{
                Button(action: {
                    isActive = true
                }, label: {
                    Text("Left").foregroundColor(.orange)
                })
                NavigationLink(destination: LeftView(), isActive: $isActive) {}
            }, trailing: Button(action: {
                // Home
                UIViewController.topMost?.navigationController?.pushViewController(HomeViewController(), animated: true)
            }, label: {
                Text("Home").foregroundColor(.orange)
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
