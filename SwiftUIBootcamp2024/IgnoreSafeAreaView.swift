//
//  IgnoreSafeAreaView.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 16/03/2024.
//

import SwiftUI

struct IgnoreSafeAreaView: View {
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Hello, Word")
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
        }
    }
}

#Preview {
    IgnoreSafeAreaView()
}
 
