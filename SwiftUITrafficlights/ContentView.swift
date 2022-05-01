//
//  ContentView.swift
//  SwiftUITrafficlights
//
//  Created by Максим Гурков on 01.05.2022.
//

import SwiftUI

enum ColorView {
    case red, green, yellow
}

struct ContentView: View {
    
    @State private var buttonLabel = "Start"
    @State private var redAlfa = 0.3
    @State private var yellowAlfa = 0.3
    @State private var greenAlfa = 0.3
    
    @State private var colors = ColorView.red
    
    private func actionNextColor() {
        
        let lightOn = 1.0
        let lightOF = 0.3
        
        switch colors {
        case .red:
            colors = .yellow
            redAlfa = lightOn
            greenAlfa = lightOF
        case .yellow:
            colors = .green
            yellowAlfa = lightOn
            redAlfa = lightOF
        case .green:
            colors = .red
            greenAlfa = lightOn
            yellowAlfa = lightOF
        }
    }
}
    extension ContentView {
    var body: some View {
        VStack {
            ColorCircleView(alfa: redAlfa, color: .red)
            ColorCircleView(alfa: yellowAlfa, color: .yellow)
            ColorCircleView(alfa: greenAlfa, color: .green)
        Spacer()
            ButtonAktion(title: buttonLabel) {
                buttonLabel = "Next"
                actionNextColor()
            }
        }
        .padding(.bottom, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
