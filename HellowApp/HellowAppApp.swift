//
//  HellowAppApp.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

@main
struct HellowAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserManager())
        }
    }
}
