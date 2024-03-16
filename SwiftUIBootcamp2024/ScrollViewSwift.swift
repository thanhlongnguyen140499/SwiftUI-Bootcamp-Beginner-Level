//
//  ScrollView.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 16/03/2024.
//

import SwiftUI

struct ScrollViewSwift: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<1000) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 150, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                    
                            }
                        }
                    })
                }
            }
        }
        
    }
}

#Preview {
    ScrollViewSwift()
}
