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
            Text("\(user.symbols)")
                .multilineTextAlignment(.center)
                .frame(width: 50)
        }
        .frame(width: 315, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .overlay(Capsule().stroke(AngularGradient(gradient: user.gradient, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/), lineWidth: 8))
        .shadow(color: Color(.systemBlue), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct TextRegView_Previews: PreviewProvider {
    static var previews: some View {
        TextRegView(user: UserManager())
    }
}
