//
//  PickerPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/6/2.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: String { self.rawValue }
}

struct PickerPage: View {
    @State private var selectedFlavor = Flavor.chocolate
    
    var body: some View {

        VStack {
            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
            }
            Picker(selection: $selectedFlavor, label: Text("Picker"), content: {
                ForEach(Flavor.allCases) { spread in
                    Text(spread.id).tag(spread)
                }
            })
            Picker("Flavor", selection: $selectedFlavor) {
                ForEach(Flavor.allCases) { spread in
                    Text(spread.id).tag(spread)
                }
            }
            Text("Selected flavor: \(selectedFlavor.rawValue)")
        }.padding()
    }
}

struct PickerPage_Previews: PreviewProvider {
    static var previews: some View {
        PickerPage()
    }
}
