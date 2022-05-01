//
//  ColorCircleView.swift
//  SwiftUITrafficlights
//
//  Created by Максим Гурков on 01.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let alfa: Double
    let color: Color

   
    var body: some View {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .opacity(alfa)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(alfa: 0.3, color: .red)
    }
}
