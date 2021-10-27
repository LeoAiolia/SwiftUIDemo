//
//  ImagePage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/5/28.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct ImagePage: View {
    
    let range = 1..<6
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                
                Image("icon").resizable().frame(width: 30.0 * CGFloat(index), height: 30.0 * CGFloat(index), alignment: .center).onTapGesture {
                    print("icon_\(index)")
                }
            }
        }.navigationBarTitle(Text("image"))
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
