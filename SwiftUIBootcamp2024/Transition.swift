//
//  Transition.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct Transition: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //            Color.gray.ignoresSafeArea(.all)
            
            VStack {
                Button("helo") {
                    withAnimation(.spring(
                        duration: 0.5, bounce: 0.5, blendDuration: 1
                    )) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                //                RoundedRectangle(cornerRadius: 30)
                //                    .frame( height: UIScreen.main.bounds.height * 0.5)
                //                    .transition(.move(edge: .bottom))
                //    //                .transition(.slide)
                
                // Asymmetric Transition
                RoundedRectangle(cornerRadius: 30)
                    .frame( height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeIn))
                    )
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Transition()
}
