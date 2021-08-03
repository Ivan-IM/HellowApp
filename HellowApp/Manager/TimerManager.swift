//
//  TimerManager.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import Foundation
import SwiftUI

class TimerManager: ObservableObject {
    
    @Published var counter = 5
    @Published var buttonTitle = "Start"
    @Published var showImage = false
    private var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    private func buttonDidTapped() {
        if buttonTitle == "Reset" {
            counter = 5
            showImage = false
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            showImage = true
            buttonTitle = "Reset"
        }
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
