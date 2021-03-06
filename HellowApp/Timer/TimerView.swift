//
//  TimerView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct TimerView: View {
    @StateObject var timer = TimerManager()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hello, \(user.name)!")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .opacity(0.8)
            
            Spacer()
            Image("Image")
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                .shadow(color: Color(.systemPurple), radius: 4)
                .opacity(timer.showImage ? 0.8:0)
            
            Spacer()
            Text("\(timer.counter)")
                .font(.largeTitle)
                .foregroundColor(Color(.systemBlue))
                .bold()
                .opacity(0.8)
            
            Spacer()
            ButtonTimerView(title: $timer.buttonTitle, action: timer.startTimer, cleanAction: user.clear)
        }
        .padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView().environmentObject(UserManager())
    }
}
