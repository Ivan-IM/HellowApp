//
//  ButtonTimerView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct ButtonTimerView: View {
    @Binding var title: String
    var action: () -> Void
    var cleanAction: () -> Void
    
    var body: some View {
        HStack {
            Button(action: action, label: {
                Text(title)
                    .foregroundColor(Color(.systemBlue))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            })
            .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
            .overlay(Capsule().stroke(Color(.systemBlue), lineWidth: 5))
            .opacity(0.8)
            
            Spacer()
            Button(action: cleanAction, label: {
                Text("Logout")
                    .bold()
            })
        }
        .padding()
    }
}

