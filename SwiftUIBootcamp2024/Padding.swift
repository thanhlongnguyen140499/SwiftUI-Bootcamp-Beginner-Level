//
//  Padding.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 11/03/2024.
//

import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Ellipse().fill(.yellow)
//                    .frame(width: 200, height: 100)
//            )
//        Text("Ok")
//            .padding(20)
//            .background(
//                Circle().fill(.purple)
//            )
//            .foregroundColor(.white).bold()
//        
//        Text("Ok")
//            .background(.red)
//            .padding(20)
//            .background(.blue)
//        
//        Text("Ok")
//            .padding(20)
//            .background(.red)
//            .padding(.leading, 50)
//            .background(.blue)
        
        VStack (alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .multilineTextAlignment(.leading)
        }
        .padding(.vertical, 10)
        .padding(.horizontal,10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                
        ).padding(.horizontal, 10)
        
    }
}

#Preview {
    Padding()
}
