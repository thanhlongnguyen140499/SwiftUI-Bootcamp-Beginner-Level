//
//  ConditionalStatement.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 02/05/2024.
//

import SwiftUI

struct ConditionalStatement: View {
    @State var isLoading: Bool = false
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(.all)
            
            
            
            VStack {
                Button(action: {
                    isLoading.toggle()
                }, label: {
                    Text("Button").foregroundStyle(.black)
                })
                
                if isLoading {
                    ProgressView()
                } else {
                    Circle()
                        .fill(Color.pink)
                }
                
            }
        }
    }
}

#Preview {
    ConditionalStatement()
}
