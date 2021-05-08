//
//  CaculatorView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/3/15.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct CaculatorView: View {
    
    let row: [CalculatorButtonItem] = [ .digit(1), .digit(2), .digit(3), .op(.plus),]
    
    var body: some View {
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(
                    title: item.title,
                    size: item.size,
                    backgroundColorName: item.backgroundColorName) {
                    print("Button: \(item.title)")
                }
            }
        }
    }
}

struct CalculatorButton: View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColorName: String
    let action: () -> Void
    
    var body: some View { Button(action: action) {
        Text(title)
            .font(.system(size: fontSize))
            .foregroundColor(.white)
            .frame(width: size.width, height: size.height)
            .background(Color(backgroundColorName))
            .cornerRadius(size.width / 2)
    }
    }
}

struct CaculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CaculatorView()
    }
}
