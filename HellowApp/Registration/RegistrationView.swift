//
//  RegistrationView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct RegistrationView: View {
    
    var body: some View {
        VStack {
            TextRegView()
            ButtonRegView()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView().environmentObject(UserManager())
    }
}
