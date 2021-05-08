//
//  TextPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/2/9.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

private let baidu = "https://m.baidu.com"

struct TextPage: View {
    
    var body: some View {
        
        VStack {
            Text("百度一下，你就知道").underline().onTapGesture {
                print(baidu)
            }
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.largeTitle)
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            HStack {
                Text("Text")
                Text("TextField").bold()
                Text("SecureField").foregroundColor(.red).italic()
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                " Use them to present your app’s content onscreen.")
                .lineLimit(nil).padding(.bottom, 10)
            
            Text("今天天气很不错，是个回家的好日子，明天回家希望也是好天气，必须的")
                .font(.body)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .lineLimit(1).padding(.leading)
                
        }
    }
}


#if DEBUG
struct TextPage_Previews : PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
#endif
