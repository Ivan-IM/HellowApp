//
//  UserManager.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import Foundation
import SwiftUI


class UserManager: ObservableObject {
    
    @Published var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "Name")
        }
    }
    
    @Published var symbols: Int = 0
    @Published var showRegistrationView: Bool = true
    @Published var showButtonView: Bool = true
    
    var gradient = Gradient(colors: [Color(.systemTeal), Color(.systemBlue), Color(.white), Color(.systemTeal)])
    
    func validator(_ value: String) -> String {
        name = value
        symbols = name.count
        showButton()
        return name
    }
    
    func showButton() {
        if symbols < 4 {
            showButtonView = true
        }
        else {
            showButtonView = false
        }
    }
    
    func showRegistration() {
        if name.isEmpty {
            showRegistrationView = true
        }
        else {
            showRegistrationView = false
        }
    }
    
    func clear() {
        name = ""
        symbols = 0
        showButton()
        showRegistration()
    }
    
    init() {
        self.name = UserDefaults.standard.object(forKey: "Name") as? String ?? ""
        showRegistration()
    }
}
