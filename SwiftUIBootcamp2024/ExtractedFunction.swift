//
//  ExtractedFunction.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 24/04/2024.
//

import SwiftUI

struct ExtractedFunction: View {
    @State var backgroundColor: Color = Color.white
    @State var backgroundNumber: Int = 1
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // content
            if (backgroundNumber == 1) {
                contentLayer
            } else {
                textLayer
            }
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            Button(action: {
                changeColor(Color.yellow)
                backgroundNumber = 1
            }, label: {
                Text("Button 01")
            })
            
            Button(action: {
                changeColor(Color.red)
                backgroundNumber = 2
            }, label: {
                Text("Button 02")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                
            })
            .padding(20)
            .background(.red)
            .cornerRadius(20)
        }
    }
    
    var textLayer: some View {
        VStack {
            Text("Hello")
                .font(.caption2)
                .foregroundColor(.blue)
                .padding()
                .background(.black)
        }
    }
    
    
    func changeColor(_ color: Color) {
        backgroundColor = color
    }
}


#Preview {
    ExtractedFunction()
}
