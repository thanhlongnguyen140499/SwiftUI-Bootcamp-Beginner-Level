//
//  VstackZstackAndZstack.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 11/03/2024.
//

import SwiftUI

struct VstackZstackAndZstack: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack (alignment: .trailing, spacing: 10, content:  {
            Ellipse()
                .fill(Color.pink)
                .frame(width: 50, height: 100)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 100, height: 100)
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
            
        })
        
       
    }
}

#Preview {
    VstackZstackAndZstack()
}
