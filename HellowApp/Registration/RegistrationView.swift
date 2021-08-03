//
//  RegistrationView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject var user: UserManager
    @State var showingView = false
    
    var body: some View {
        ZStack {
            BackgroundView()
                .opacity(0.7)
            VStack {
                TextRegView(user: user)
                ButtonRegView(user: user)
            }
            .opacity(showingView ? 1:0)
            .animation(Animation.easeIn(duration: 1))
            .onAppear() {
                showingView.toggle()
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
