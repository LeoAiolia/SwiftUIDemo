//
//  LotteryView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LotteryView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2.0) {
            Text("Hellow SwiftUI")
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(Color.red)
            HStack {
                Text("this is test")
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            }
            
        }.padding([.horizontal, .vertical], 10)
        .tag("123")
    }
}

struct LotteryView_Previews: PreviewProvider {
    static var previews: some View {
        LotteryView()
    }
}
