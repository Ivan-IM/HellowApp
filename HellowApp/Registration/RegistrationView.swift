//
//  RegistrationView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject var user: UserManager
    
    var body: some View {
        ZStack {
            BackgroundView()
                .opacity(0.7)
            VStack {
                TextRegView(user: user)
                ButtonRegView(user: user)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(user: UserManager())
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
