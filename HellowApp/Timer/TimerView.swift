//
//  TimerView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct TimerView: View {
    @StateObject var timer = TimerManager()
    @ObservedObject var user: UserManager
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: user.gradient, center: .bottomTrailing, angle: .degrees(90))
                .opacity(0.5)
                .ignoresSafeArea()
            VStack {
                Text("Hello, \(user.name)!")
                    .font(.largeTitle)
                Spacer()
                Text("YOU AWESOME!")
                    .opacity(timer.showImage ? 1:0)
                Spacer()
                Text("\(timer.counter)")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                ButtonTimerView(title: $timer.buttonTitle, action: timer.startTimer, cleanAction: user.clear)
            }
            .padding()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(user: UserManager())
    }
}
