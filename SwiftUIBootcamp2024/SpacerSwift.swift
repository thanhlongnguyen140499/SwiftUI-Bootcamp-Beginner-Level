//
//  Spacer.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 13/03/2024.
//

import SwiftUI

struct SpacerSwift: View {
    var body: some View {
//        EXAMPLE 01:
//        HStack(spacing: 0) {
//            Spacer()
//                .frame(height: 20)
//                .background(Color.orange)
//            
//            Rectangle().frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//        }.background(Color.blue)
        
//        EXAMPLE 02
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            Rectangle().frame(height: 50)
        }
        
        
    }
}

#Preview {
    SpacerSwift()
}
