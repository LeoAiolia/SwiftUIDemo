//
//  RightView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/5/21.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct RightView: View {
    
    var body: some View {
        
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600
                    let codepointString = String(format: "%02X", codepoint)
                    
                    
                    Text("\(codepointString)")
                    
                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                    Text("\(emoji)").padding()
                }
            }.navigationBarTitle(Text("emoji"))
        }
    }
}

@available(iOS 14.0, *)
struct RightView_Previews: PreviewProvider {
    static var previews: some View {
        RightView()
    }
}
