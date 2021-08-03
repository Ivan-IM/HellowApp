//
//  ButtonTimerView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct ButtonTimerView: View {
    @Binding var title: String
    var gradient: Gradient
    var action: () -> Void
    var cleanAction: () -> Void
    
    var body: some View {
        HStack {
            Button(action: action, label: {
                Text(title)
                    .foregroundColor(Color.black)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            })
            .frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: Color(.systemBlue), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            Spacer()
            Button(action: cleanAction, label: {
                Text("Logout")
                    .bold()
            })
        }
        .padding()
    }
}

