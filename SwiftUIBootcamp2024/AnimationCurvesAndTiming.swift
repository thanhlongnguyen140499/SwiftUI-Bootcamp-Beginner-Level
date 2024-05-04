//
//  AnimationCurvesAndTiming.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct AnimationCurvesAndTiming: View {
    @State var isAnimating: Bool = false
    @State var duration: Int = 5
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            VStack {
                Button("Hello") {
                    isAnimating.toggle()
                }
                
                // Animation Curves and Timing
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 50, height: 100)
                    .animation(Animation.linear(duration: TimeInterval(duration)))
                
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50, height: 100)
//                    .animation(Animation.easeInOut(duration: TimeInterval(duration)))
//                
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50, height: 100)
//                    .animation(Animation.easeOut(duration: TimeInterval(duration)))
                
                // Animation Spring
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 50, height: 100)
                    .animation(.spring(response: 0.5,
                                       dampingFraction: 0.7,
                                       blendDuration: 1
                                      ))
            }
        }
    }
}

#Preview {
    AnimationCurvesAndTiming()
}
