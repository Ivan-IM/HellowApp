//
//  ButtonRegView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct ButtonRegView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: {
            user.showRegistration()
        }, label: {
            HStack {
                Text("OK")
                    .bold()
                Image(systemName: "chevron.right.circle")
            }
        }).disabled(user.showButtonView)
        .padding()
    }
}

struct ButtonRegView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRegView().environmentObject(UserManager())
    }
}
