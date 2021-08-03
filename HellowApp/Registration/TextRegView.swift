//
//  TextRegView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct TextRegView: View {
    @ObservedObject var user: UserManager
    
    var body: some View {
        HStack {
            let validation = Binding<String>(
                get: { self.user.name },
                set: { self.user.name = self.user.validator($0)}
            )
            
            TextField("Enter your name", text: validation, onCommit: {
                user.showButton()
            })
            .multilineTextAlignment(.center)
            .frame(width: 250)
            .offset(x: 25)
            
            ZStack {
                Text("\(user.symbols)")
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .opacity(user.showButtonView ? 1:0)
                
                Image(systemName: "checkmark.circle")
                    .foregroundColor(Color(.systemBlue))
                    .opacity(user.showButtonView ? 0:1)
                    
                    
            }.frame(width: 50)
        }
        .frame(width: 315, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .overlay(Capsule().stroke(Color(.systemBlue), lineWidth: 3).opacity(0.5))
    }
}

struct TextRegView_Previews: PreviewProvider {
    static var previews: some View {
        TextRegView(user: UserManager())
    }
}
