//
//  ButtonPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/6/1.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct ButtonPage: View {
    var body: some View {
        Button(action: {
            print("tap button")
        }, label: {
            Text("I'M a Button").bold()
                .font(.system(size: 40, design: .rounded))
                .shadow(radius: 1)
        }).navigationBarTitle(Text("Button"))
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
