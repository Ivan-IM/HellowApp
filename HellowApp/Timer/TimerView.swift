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
                Image("Image")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                    .shadow(color: Color(.systemBlue), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .opacity(timer.showImage ? 1:0)
                Spacer()
                Text("\(timer.counter)")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                ButtonTimerView(title: $timer.buttonTitle, gradient: user.gradient, action: timer.startTimer, cleanAction: user.clear)
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
