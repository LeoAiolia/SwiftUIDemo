//
//  WebImagePage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/5/28.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct WebImagePage: View {
    
    @State private var uiImage: UIImage? = nil
    
    
    var body: some View {
        Image(uiImage: uiImage ?? UIImage(named: "icon")!)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .onAppear(perform: downURLImage)
            .onTapGesture {
            print("tap image")
        }.navigationBarTitle(Text("webImage"))
    }
    
    func downURLImage() {
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            print("Invalid URL.")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data, let image = UIImage(data: data) {
                self.uiImage = image
            } else {
                print("error: \(String(describing: error))")
            }
        }.resume()
    }
}

struct WebImagePage_Previews: PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
