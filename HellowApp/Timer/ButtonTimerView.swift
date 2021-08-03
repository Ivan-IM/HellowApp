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
            })
            Spacer()
            Button(action: cleanAction, label: {
                Text("Logout")
            })
        }
        .padding()
    }
}

