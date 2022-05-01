//
//  ButtonAktion.swift
//  SwiftUITrafficlights
//
//  Created by Максим Гурков on 01.05.2022.
//

import SwiftUI

struct ButtonAktion: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(width: 150, height: 40)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}

struct ButtonAktion_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAktion(title: "Start", action: {})
    }
}
