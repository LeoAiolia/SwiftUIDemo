//
//  TextfieldPage.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/2/9.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

struct TextFieldPage: View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    
    let nameText = Text("请填入昵称").foregroundColor(.secondary).font(.system(size: 16))
    let pwdText = Text("请填入密码").foregroundColor(.secondary).font(.system(size: 16))
    
    var body: some View {
        VStack {
            HStack {
                Text("昵称：")
                    .foregroundColor(.secondary)
                
                TextField("", text: $name, onEditingChanged: { (changed) in
                    print("onEditing: \(changed)")
                }, onCommit: {
                    print("userName: \(self.name)")
                    self.endEditing(true)
                })
            }
            .frame(height: 50).textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack {
                Text("密码：").foregroundColor(.secondary)
                SecureField("", text: $password) {
                    print("Password: \(self.password)")
                    self.endEditing(true)
                }
            }
            .frame(height: 50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            ExtractedView()
        }
        .offset(y: -150)
        .navigationBarTitle(Text("TextField"))
    }
    
    private func endEditing(_ force: Bool) {
        MainApp.keyWindow?.endEditing(force)
    }
}

// https://stackoverflow.com/questions/56491386/how-to-hide-keyboard-when-using-swiftui
#if DEBUG
struct TextFieldPage_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            TextFieldPage()
            TextFieldPage()
        }
    }
}
#endif

struct ExtractedView: View {
    var body: some View {
        Button(action: {
            print("昵称：\(name), 密码：\(password)")
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        }).frame(width: 320, height: 44, alignment: .center).foregroundColor(.white).background(Color(.blue)).cornerRadius(8)
    }
}
