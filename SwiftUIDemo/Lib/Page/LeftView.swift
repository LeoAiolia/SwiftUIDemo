//
//  LeftView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/5/21.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct LeftView: View {
    
    var body: some View {
        VStack {
            Text("Hello, LeftView!").padding(.bottom, 10)
            DetailView1(number: 99)
        }
    }
}

struct LeftView_Previews: PreviewProvider {
    static var previews: some View {
        LeftView()
    }
}

struct DetailView1: View {
    
    @State private var number: Int

    init(number: Int) {
        self.number = number + 1
    }
    
    var body: some View {
        HStack {
            Text("number: \(number)")
            Button("+") { number = number + 1 }
        }.onAppear(){
            print("DetailView1 appear")
        }
    }
}
