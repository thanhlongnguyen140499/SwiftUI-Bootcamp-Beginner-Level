//
//  BackgroundsAndOverlays.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 10/03/2024.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        Circle()
            .fill(Color.pink)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .overlay(
                Text("OK")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            )
            .background(
                Circle().fill(Color.blue)
                    .frame(width: 110, height: 110)
            )
            .overlay(Text("Shit"), alignment: .center)
        
        Image(systemName: "heart.fill")
            .font(.system(size: 25))
            .foregroundColor(Color.white)
            .background(
                Circle().fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
                    )
                )
                    .frame(width: 75, height: 75)
                    .shadow(color: .black, radius: 5, x: 0.0, y: 5)
                    .overlay(
                        Circle().fill(Color.red)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .bold()
                                )
                            .shadow(color: .purple, radius: 5, x: 0.0, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
            .padding(50)
            
        
    }
}

#Preview {
    BackgroundsAndOverlays()
}
