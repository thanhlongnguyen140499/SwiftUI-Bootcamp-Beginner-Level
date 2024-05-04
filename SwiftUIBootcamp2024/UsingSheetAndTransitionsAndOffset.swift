//
//  UsingSheetAndTransitionsAndOffset.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct UsingSheetAndTransitionsAndOffset: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Button(action: {
                withAnimation(.easeIn, {
                    showSheet.toggle()
                })
            }, label: {
                Text("Button")
            })
            
            // Method 01: Transitions
//            if showSheet {
//                BlueSheet(showSheet: $showSheet)
//                    .padding(.top, 100)
//            }
            
            // Method 02: Offets
            BlueSheet(showSheet: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet  ? 0 :  UIScreen.main.bounds.height)
        }
    }
}

struct BlueSheet: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.blue.ignoresSafeArea(.all)
            
            VStack {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
            
            
        }
    }
}

#Preview {
    UsingSheetAndTransitionsAndOffset()
}
