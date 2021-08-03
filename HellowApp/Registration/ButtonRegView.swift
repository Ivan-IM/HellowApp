//
//  ButtonRegView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct ButtonRegView: View {
    @ObservedObject var user: UserManager
    
    var body: some View {
        Button(action: {
            user.showRegistration()
        }, label: {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }).disabled(user.showButtonView)
        .padding()
    }
}

struct ButtonRegView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRegView(user: UserManager())
    }
}
