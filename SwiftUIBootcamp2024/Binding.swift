//
//  Binding.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 02/05/2024.
//

import SwiftUI

struct BindingView: View {
    @State var backgroundColor: Color = Color.purple
    @State var title: String = "Text"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color;
    @Binding var title: String;
    @State var buttonColor: Color = Color.red
    
    var body: some View {
        VStack {
            Button(action: {
                backgroundColor = Color.primary
                title = "Hello"
                buttonColor = Color.red
            }, label: {
                Text("Change Color")
            })
            .padding()
            .background(buttonColor)
            .cornerRadius(10)
        }
    }
}

#Preview {
    BindingView()
}
