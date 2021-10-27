//
//  LotteryView.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct LotteryView: View {
    
    @ObservedObject var control = LotteryControl()
    let colors = [Color.red, .black, .gray, .green, .blue, .orange, .yellow, .purple]
    
    var body: some View {

        ZStack {
            ForEach(0..<control.index, id: \.self) { idx in
                Path { path in
                    path.move(to: CGPoint(x: 150, y: 150))
                    path.addArc(center: CGPoint(x: 150, y: 150),
                                radius: 150,
                                startAngle: Angle(degrees: Double(idx) * self.control.angle),
                                endAngle: Angle(degrees: Double(idx+1) * self.control.angle),
                                clockwise: false)
                    path.addLine(to: CGPoint(x: 150, y: 150))
                }.fill(colors[idx % self.colors.count])
            }
        }.frame(width: 300, height: 300, alignment: .center).rotationEffect(.degrees(control.rotation))
    }
}

class LotteryControl: ObservableObject {
    @Published var rotation = 0.0
    let index = 8
    var angle: Double { 360 / Double(index) }
    
    init() {
        print("init runed:\(angle)")
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.rotation += 2
        }
    }
}

struct LotteryView_Previews: PreviewProvider {
    static var previews: some View {
        LotteryView()
    }
}
