//
//  BackgroundView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct BackgroundView: View {
    @State private var animate = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color(.systemPink), Color(.systemPurple), Color(.systemTeal), Color(.systemPink)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 500)
                .scaleEffect(animate ? 1:1.5)
            
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
        }
        .ignoresSafeArea()
        .onAppear() {
            animate.toggle()
        }
        .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true))
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
