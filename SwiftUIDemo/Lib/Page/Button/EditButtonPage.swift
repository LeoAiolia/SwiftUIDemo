//
//  EditButtonPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/6/1.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI
import Combine

struct EditButtonPage : View {
    
    @ObservedObject private var source = dataSource()
    
    var body: some View {
        List {
            
            ForEach(source.items, id: \.self) { idx in
                PageRow(title: "\(idx)", subTitle: nil)
            }
                .onDelete(perform: deletePlace)
                .onMove(perform: movePlace)
            }
            .navigationBarTitle(Text("Edit Row"), displayMode: .large)
            .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
        if let last = offset.last {
            source.items.remove(at: last)
            print(source.items.count)
        }
    }
    
    func movePlace(from source: IndexSet, to destination: Int) {
        print(source, destination)
       
    }
    
}

class dataSource: ObservableObject {

    @Published public var items: [Int]
    
    init() {
        self.items = (0..<10).map { $0 }
    }
}


struct EditButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonPage()
    }
}
