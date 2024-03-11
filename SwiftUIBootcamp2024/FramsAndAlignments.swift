//
//  FramsAndAlignments.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 10/03/2024.
//

import SwiftUI

struct FramsAndAlignments: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .frame(width: 300, height: 300, alignment: .bottom)
            .foregroundColor(.white)
            .font(.title)
            .bold()
            .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .gray,.green,.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        
        Text("Background")
            .frame(width: 100, height: 100, alignment: .center)
            .background(
                Circle()
                .fill(Color.blue)
            )
        
        Text("Linear")
            .frame(width: 100, height: 100, alignment: .center)
            .background(
                Circle().fill(LinearGradient(colors: [.blue, .pink, .purple], startPoint: .top, endPoint: .bottom)))
    }
}

#Preview {
    FramsAndAlignments()
}
