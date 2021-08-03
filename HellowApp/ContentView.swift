//
//  ContentView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = UserManager()
    
    var body: some View {
        if user.showRegistrationView {
            RegistrationView(user: user)
        }
        else {
            TimerView(user: user)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
